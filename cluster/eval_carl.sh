#!/bin/bash

#SBATCH --job-name=e-c
#SBATCH --output=log_eval_carl.log
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32GB
#SBATCH --time=7-00:00:00
#SBATCH --gres=gpu:1

source activate lensing
cd /scratch/jb6504/StrongLensing-Inference/

# for i in {0..624}
# do
#     echo ""
#     echo ""
#     echo ""
#     echo "EVALUATING CALIB $i"
#     echo ""
#     python -u test.py carl calibrate_theta$i carl_calibrate_theta$i --dir /scratch/jb6504/StrongLensing-Inference
# done

echo ""
echo ""
echo ""
echo "EVALUATING CALIB REF"
echo ""
python -u test.py carl calibrate_ref carl_calibrate_ref --grid --dir /scratch/jb6504/StrongLensing-Inference

# echo ""
# echo ""
# echo ""
# echo "EVALUATING PRIOR SAMPLE"
# echo ""
# python -u test.py carl test_prior carl_prior --dir /scratch/jb6504/StrongLensing-Inference
#
#
# echo ""
# echo ""
# echo ""
# echo "EVALUATING PRIOR SAMPLE (SHUFFLED)"
# echo ""
# python -u test.py carl test_prior carl_shuffledprior --shuffle --dir /scratch/jb6504/StrongLensing-Inference

# echo ""
# echo ""
# echo ""
# echo "EVALUATING POINT SAMPLE ON PARAM GRID"
# echo ""
# python -u test.py carl test_point carl_grid --grid --dir /scratch/jb6504/StrongLensing-Inference