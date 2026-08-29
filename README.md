# CORE: Physics-Informed Ensembles

Code accompanying the paper:

> **Consensus-driven Optimization for Regularized Ensembles: Robust Training Scheme for Physics Informed Neural Networks**

This repository contains the experimental implementation associated with
**CORE (Consensus-driven Optimization for Regularized Ensembles)**, a joint
consensus-based ensemble training methodology for physics-informed neural
networks.

CORE trains multiple independently initialized physical models simultaneously
and introduces a consensus penalty during optimization, encouraging agreement
between ensemble members while preserving the interpretability of each
individual learned physical system.

## Repository Contents

The following experiment directories are included in their entirety:

- `building_hybrid/`
- `GLNN/`
- `Hybrid/`
- `LNN/`
- `LSTM/`

These directories contain the implementations, notebooks, training procedures,
evaluation code, and supporting experiment files used in the study.

## Intentionally Excluded

The following project directories are intentionally not included in this
repository:

- `JCP_Paper_files/`
- `MLST_Paper/`

## Experimental Scope

The accompanying study evaluates CORE across:

- Synthetic dynamical systems
- Generalized Lagrangian Neural Networks (GLNNs)
- Lagrangian Neural Networks (LNNs)
- Hybrid neural architectures
- LSTM baselines
- Real robotic and surgical kinematics datasets, including ROSMA and JIGSAWS

## Reproducibility

For experimental parameters, hyperparameters, dataset splits, random seeds,
and evaluation settings, please refer to the reproducibility appendix of the
associated paper.

The code in this repository preserves the experiment-specific implementations
used for the study. Exact numerical reproduction may additionally depend on:

- Python and package versions
- JAX and accelerator configuration
- External dataset availability and preprocessing
- Random seeds
- Hardware environment

## Getting Started

Clone the repository:

```bash
git clone https://github.com/DasAnup356/CORE-Physics-Informed-Ensembles.git
cd CORE-Physics-Informed-Ensembles
```

Then inspect the experiment-specific directories and run the corresponding
notebooks or scripts.

## Repository Structure

```text
CORE-Physics-Informed-Ensembles/
├── building_hybrid/
├── GLNN/
├── Hybrid/
├── LNN/
├── LSTM/
└── README.md
```

## Citation

If you use this code, please cite the associated paper:

**Das Anup Kumar and Gaurav Kumar Nayak.**
*Consensus-driven Optimization for Regularized Ensembles: Robust Training Scheme
for Physics Informed Neural Networks.*

