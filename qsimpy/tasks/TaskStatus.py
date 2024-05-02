""" This module contains the TaskStatus enum, indicating the status of a quantum task."""
import enum


class TaskStatus(enum.Enum):
    """
    The status of a quantum task.
    """

    INITIALIZING = "QTask is being initialized"
    QUEUED = "QTask is queued"
    VALIDATING = "QTask is being validated"
    RUNNING = "QTask is actively running"
    CANCELLED = "QTask has been cancelled"
    DONE = "QTask has successfully run"
    ERROR = "QTask incurred error"
