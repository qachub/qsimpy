from env_creator import qsimpy_env_creator
import os
import csv
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker

class HeuristicSolutions:
    def __init__(self, env, num_episodes=100):

        # Initialize the environment
        self.env = env
        self.num_episodes = num_episodes

        # Initialize the results of heuristic solutions
        self.results = []
        # Round Robin index for the QNodes. Example: [0, 1, 2, 3, 4, 0, 1, 2, 3, 4, ...]
        self.rr_index = 0
        # Priority index of Greedy solution after sorting the QNodes based on the waiting time
        self.greedy_index = 0

    def run(self, control):
        """
        Run the heuristic solutions for the given algorithm (control).
        Args:
            - control (str): The heuristic algorithm to use. Options: "greedy", "random", "round_robin", "greedy_error"
        """

        self.results = []
        # Reset the subset of QTasks 
        self.env.round = 1

        for _ in range(self.num_episodes):

            # Initialize the temporary array to store the results of the QTasks execution for each episode
            arr_temp = {
                "total_completion_time": 0.0,
                "rescheduling_count": 0.0
            }
            terminated = False

            # Reset the environment and setup the quantum resources
            self.env.reset()
            self.env.setup_quantum_resources()
            self.rr_index = 0

            while not terminated:
                # Get the action with the given control
                if control == "greedy":
                    action = self.greedy(self.greedy_index)
                elif control == "random":
                    action = self.random()
                elif control == "round_robin":
                    action = self.round_robin()
                elif control == "greedy_error":
                    action = self.greedy_error(self.greedy_index)
                
                obs, reward, terminated, done, info = self.env.step(action)
                
                # If the QNode is busy or not satisfied, move to the next priority QNode
                self.greedy_index += 1
                if reward > 0:
                    """Get the results of the QTask execution

                    Values:
                        - Total Completion Time: waiting_time + execution_time
                        - Rescheduling Count: rescheduling_count
                    """
                    # Reset priority index of Greedy solution if QTasks are satisfied
                    self.greedy_index = 0

                    arr_temp["total_completion_time"] += info["scheduled_qtask"].waiting_time + info["scheduled_qtask"].execution_time
                    arr_temp["rescheduling_count"] += info["scheduled_qtask"].rescheduling_count
            self.env.qsp_env.run()
            # Final results of the episode
            self.results.append(arr_temp)

        # Save the results to a CSV file
        self._save_to_csv(control)
                
    def greedy(self, greedy_index):
        # Sort the QNodes based on the next available time (or waiting time) and select the QNode with the smallest waiting time
        greedy_strategy = sorted(self.env.qnodes, key=lambda x: x.next_available_time)
        return self.env.qnodes.index(greedy_strategy[greedy_index])

    def random(self):
        # Randomly select a QNode
        action = self.env.action_space.sample()
        return action
    
    def round_robin(self):
        # Select the QNode based on the Round Robin index
        action = self.rr_index % self.env.n_qnodes
        self.rr_index += 1
        return action
    
    def greedy_error(self, greedy_index, g_error="Readout_assignment_error"):
        # Sort the QNodes based on the next available time (or waiting time) and select the QNode with the 
        # smallest waiting time and smallest error (default is readout_error) in the qnode
    
        greedy_strategy = sorted(self.env.qnodes, key=lambda x: (x.next_available_time, x.error[g_error]))
        return self.env.qnodes.index(greedy_strategy[greedy_index])

    def _save_to_csv(self, control) -> None:
        """
        Save values and episodes to a CSV file.
        """

        file_name = "./results/heuristics/" 

        if not os.path.exists(file_name):
            os.makedirs(file_name)

        file_name += control + ".csv"
        # Open the CSV file in write mode
        with open(file_name, mode='w', newline='') as file:
            writer = csv.writer(file)
            
            # Write the header
            writer.writerow(['Episode', 'Total Completion Time', 'Rescheduling Count'])
            
            # Write the data
            for i in range(len(self.results)):
                writer.writerow([i, self.results[i]['total_completion_time'], self.results[i]['rescheduling_count']])
        print("CSV file saved to " + file_name)

    def _plot_results(self, paths) -> None:
        """
        Plot the results of the episodes.
        """
        for path in paths:
            df1 = pd.read_csv(path['path'])

            plt.plot(df1['Episode'], df1['Total Completion Time'], ".-", color=path['color'], label=path['label'])

            self._summarize_results(df1, path['label'])
        
        plt.ylabel('Total Completion Time')
        plt.xlabel('Evaluation Episode')
        plt.legend(loc=2)
        plt.gca().xaxis.set_major_locator(mticker.MultipleLocator(10))
        plt.show()

    def _summarize_results(self, values, label) -> None:
        """
        Summarize the results of the episodes.
        """
        print("Results Summary for" + label + "solution:")
        print(f"Number of Episodes: {self.num_episodes}")
        print(f"Total Completion Time: {sum(values['Total Completion Time'])}")
        print(f"Average Rescheduling Count: {sum(values['Rescheduling Count']) / self.num_episodes}")


if __name__ == "__main__":

    # Create the QSimPy environment
    env_config={
                "obs_filter": "rescale_-1_1",
                "reward_filter": None,
                "dataset": "qdataset/qsimpyds_1000_sub_26.csv",
            }

    env = qsimpy_env_creator(env_config)

    # Run the heuristic solutions
    heuristics = HeuristicSolutions(env, num_episodes=100)
    heuristics.run("greedy")
    heuristics.run("random")
    heuristics.run("round_robin")
    heuristics.run("greedy_error")

    # Plot the results
    paths = [
        {
            "label": "random",
            "path": "./results/heuristics/random.csv",
            "color": "red"
        },
        {
            "label": "round robin",
            "path": "./results/heuristics/round_robin.csv",
            "color": "blue"
        },
        {
            "label": "greedy",
            "path": "./results/heuristics/greedy.csv",
            "color": "black"
        },
        {
            "label": "greedy_error",
            "path": "./results/heuristics/greedy_error.csv",
            "color": "green"
        },

    ]
    heuristics._plot_results(paths)
