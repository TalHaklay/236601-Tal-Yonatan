# 236601 - Yonatan Somer and Tal Haklay

Code for reproducing the results of our project on the paper "Fairness Guarantees under Demographic Shift".

# Installation

First, install Python 3.x, Numpy (1.16+), and Cython (0.29+).

The remaining dependencies can be installed by executing the following command from the Python directory of : 

	pip install -r requirements.txt

# Usage

Our experiments can be executed by running the provided batch file from the Python directory, as follows:

     ./experiments/scripts/iclr_ds_experiments.bat
     
Note: iclr_ds_experiments.bat contains 7 diffrent experiments.The running duration of each experiment is about 3 days, so it is recommended to run them simultaneously if possible.
     
Once the experiments complete, the figures found in the paper can be generated using the following two commands, 

     python -m experiments.scripts.iclr_figures_adult
     python -m experiments.scripts.iclr_figures_adult --unknown_ds
    
Once completed, the new figures will be saved to `Python/figures/*` by default.

