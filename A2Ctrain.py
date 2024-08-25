### requires ray version 2.6.3 to run

import ray
from ray import tune, air
from ray.tune.registry import register_env
from env_creator import qsimpy_env_creator
from ray.rllib.algorithms.a2c  import A2CConfig  # Import A2CConfig
import os

if __name__ == "__main__":
    register_env("QSimPyEnv", qsimpy_env_creator)
    
    config = (
        A2CConfig()
        .framework(framework='torch')
        .environment(
            env="QSimPyEnv", 
            env_config={
                "obs_filter": "rescale_-1_1",
                "reward_filter": None,
                "dataset": "qdataset/qsimpyds_1000_sub_36.csv",
            },
        )
        .training(gamma=0.9, lr=0.01)
        .rollouts(num_rollout_workers=4)
    )

    stopping_criteria = {
        "training_iteration": 1000, 
        "timesteps_total": 100000
    }

    # Get the absolute path of the current directory
    current_directory = os.getcwd()

    # Append the "result" folder to the current directory path
    result_directory = os.path.join(current_directory, "results")
    storage_path = f"file://{result_directory}"

    results = tune.Tuner(
        "A2C",  # Specify A2C algorithm
        run_config=air.RunConfig(
            stop=stopping_criteria,
            # Save checkpoints every 10 iterations.
            checkpoint_config=air.CheckpointConfig(checkpoint_frequency=100),
            storage_path=storage_path, 
            name="A2C_QCE_1000"
            
        ),
        param_space=config.to_dict(),
    ).fit()
