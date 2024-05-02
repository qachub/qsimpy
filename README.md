# QSimPy ![Project Status](https://img.shields.io/badge/Project-Beta%20Release-yellow) 
### A Discrete-Event Simulation Framework for Quantum Cloud Computing

QSimPy is a Python-based discrete-event simulation framework designed to address the challenges of designing and eveluating resource management techniques in quantum cloud computing environments. As quantum computing transitions to cloud-based services, the effective management and optimization of quantum resources become critical. QSimPy is developed to enable the design, evaluation, and optimization of resource management strategies specifically tailored for the quantum cloud.

![Overview of QSimPy Framework](figures/fig02-qsimpy.png "Overview of QSimPy Framework")

## Features of QSimPy:

- **Discrete-Event Simulation**: Leveraging SimPy, a well-established Python-based simulation engine, QSimPy offers a robust yet lightweight framework for modeling the dynamic interactions and operations of quantum resources and tasks.
- **Integration with Gymnasium**: QSimPy integrates seamlessly with the Gymnasium environment, enhancing its capabilities in simulating and developing reinforcement learning (RL) techniques. This feature supports the creation and evaluation of RL-based approaches for optimizing quantum resource management.
- **Learning-Centric Environment**: QSimPy is created to facilitate learning-centric approaches. It provides a simulated environment for exploring and implementing RL strategies that consider the unique demands and operational intricacies of quantum cloud computing.
- **Extensible and Compatible**: The framework is designed with extensibility, compatibility, and reusability in mind, making it a versatile tool for academic researches in the domain of quantum cloud computing. Users can extend and integrate QSimPy with other Python-based libraries and frameworks for quantum computing and machine learning to adapt with the requirements as needed.

## Getting Started

To get started with QSimPy, clone this repository and follow the installation instructions below. 

1. Clone the repository: `git clone https://github.com/QuantumAICloud/qsimpy.git`
2. Change to the project directory: `cd qsimpy`
3. Install the required dependencies: `pip install -r requirements.txt`

Explore our examples to see how QSimPy can be utilized to model different scenarios and optimize resource allocation in a simulated quantum cloud environment.

All contributions to enhance QSimPy further are welcome. For technical documentation, and usage examples, please refer to our paper.

## Reference
If you used this package or framework for your research, please kindly cite the following reference:

[1] Hoa T. Nguyen, Muhammad Usman, and Rajkumar Buyya, “QSimPy: A Learning-centric Simulation Framework for Quantum Cloud Resource Management”
