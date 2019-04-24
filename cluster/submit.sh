#!/bin/bash

cd /scratch/jb6504/StrongLensing-Inference/cluster


############################################################
# Simulation
############################################################

# sbatch --array=0-200 simulate_train.sh
# sbatch --array=201-399 simulate_train.sh
# sbatch --array=400-599 simulate_train.sh
# sbatch --array=600-799 simulate_train.sh
sbatch --array=800-999 simulate_train.sh
# sbatch --array=0-9 simulate_test_point.sh
# sbatch --array=0-9 simulate_test_prior.sh


############################################################
# Combination
############################################################

# sbatch combine_samples.sh


############################################################
# Training
############################################################

# sbatch train_debug.sh

# sbatch train_carl.sh
# sbatch train_alice.sh
# sbatch train_alices.sh

# sbatch train_carl_deep.sh
# sbatch train_alice_deep.sh
# sbatch train_alices_deep.sh


############################################################
# Evaluation
############################################################

# sbatch eval_carl.sh
# sbatch eval_alice.sh
# sbatch eval_alices.sh

# sbatch eval_carl_deep.sh
# sbatch eval_alice_deep.sh
# sbatch eval_alices_deep.sh
