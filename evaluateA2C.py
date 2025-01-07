from env_creator import qsimpy_env_creator
from ray.tune.registry import register_env
from ray.rllib.algorithms import Algorithm

register_env("QSimPyEnv", qsimpy_env_creator)

env = qsimpy_env_creator ( 
    env_config = {
        "obs_filter": "rescale_-1_1",
        "reward_filter": None,
        "dataset": "qdataset/qsimpyds_1000_sub_36.csv",
    }
)

checkpoint_path = "results\A2C_QCE_1000\A2C_QSimPyEnv_3fc51_00000_0_2024-08-11_19-08-18\checkpoint_000100"

model = Algorithm.from_checkpoint(checkpoint_path)

num_ep = 50

for ep in range(num_ep):
    obs= env.reset()
    finished = False
    ep_reward=0

    while not finished: 
        formatted_obs = obs if not isinstance(obs,tuple) else obs[0]
        action = model.compute_single_action(formatted_obs,explore = False)
        obs, reward, finished, _, info = env.step(action)
        ep_reward += reward

        if finished:
            print(f"Episode{ep} finished with reward {ep_reward} and info {info} ")
            break
env.close()




