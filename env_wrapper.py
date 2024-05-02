import gymnasium as gym
from gymnasium.core import Env
from gymnasium.wrappers.normalize import NormalizeObservation, NormalizeReward
import numpy as np
from gymnasium.spaces import Box


class ScaleQSimPyEnv(gym.RewardWrapper):
    def __init__(self, env: Env, scale: float):
        super().__init__(env)
        self.scaling_factor = scale

    def reward(self, reward):
        reward *= self.scaling_factor
        return reward


class GymNormalizeObservation(NormalizeObservation):
    def __init__(self, env: Env, *args, **kwargs):
        super().__init__(env, *args, **kwargs)
        self.observation_space = Box(
            low=np.ones((self.env.obs_dim,)) * -np.inf,
            high=np.ones((self.env.obs_dim,)) * np.inf,
        )
