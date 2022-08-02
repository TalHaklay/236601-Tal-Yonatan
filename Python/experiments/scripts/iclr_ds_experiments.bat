

rem first experiment 
rem shift attribute - sex, known demographic shift:
rem Original split
python -m experiments.classification.adult_demographic_shift iclr_adult_fixed_ds_rl_di    --n_jobs 8 --n_trials 25 --n_train 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000 --definition DisparateImpact    --e  -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var sex --cs_scale 1.5 --fixed_dist --robust_loss
rem Improved split
python -m experiments.classification.adult_demographic_shift iclr_adult_fixed_ds_rl_di    --n_jobs 8 --n_trials 25 --n_train 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000 --definition DisparateImpact    --e  -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var sex --cs_scale 1.5 --fixed_dist --robust_loss --splat_split True --splat_sex True 


rem shift attribute - sex, unknown demographic shift:
rem Original split
python -m experiments.classification.adult_demographic_shift iclr_adult_antag_ds_rl_di    --n_jobs 8 --n_trials 10 --n_train 10000 20000 30000 40000 50000 60000 --definition DisparateImpact    --e -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var sex --dshift_alpha 0.5 --cs_scale 1.5 --robust_loss
rem Improved split
python -m experiments.classification.adult_demographic_shift iclr_adult_antag_ds_rl_di    --n_jobs 8 --n_trials 10 --n_train 10000 20000 30000 40000 50000 60000 --definition DisparateImpact    --e -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var sex --dshift_alpha 0.5 --cs_scale 1.5 --robust_loss --splat_split True --splat_sex True 

rem shift attribute - race, known demographic shift:
rem Original split
python -m experiments.classification.adult_demographic_shift iclr_adult_fixed_ds_rl_di    --n_jobs 8 --n_trials 25 --n_train 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000 --definition DisparateImpact    --e  -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var race --cs_scale 1.5 --fixed_dist --robust_loss
rem Improved split
python -m experiments.classification.adult_demographic_shift iclr_adult_fixed_ds_rl_di    --n_jobs 8 --n_trials 25 --n_train 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000 --definition DisparateImpact    --e  -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var race --cs_scale 1.5 --fixed_dist --robust_loss --splat_split True --splat_sex False 

rem shift attribute - race, unknown demographic shift:
rem Original split:
python -m experiments.classification.adult_demographic_shift iclr_adult_antag_ds_rl_di    --n_jobs 8 --n_trials 10 --n_train 10000 20000 30000 40000 50000 60000 --definition DisparateImpact    --e -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var race --dshift_alpha 0.5 --cs_scale 1.5 --robust_loss
rem Improved split:
python -m experiments.classification.adult_demographic_shift iclr_adult_antag_ds_rl_di    --n_jobs 8 --n_trials 10 --n_train 10000 20000 30000 40000 50000 60000 --definition DisparateImpact    --e -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var race --dshift_alpha 0.5 --cs_scale 1.5 --robust_loss --splat_split True --splat_sex False 

rem second experiment 
rem shift attribute - race, unknown demographic shift:
rem Original split, ratio - 0.2
python -m experiments.classification.adult_demographic_shift iclr_adult_antag_ds_rl_di    --n_jobs 8 --n_trials 10 --n_train 10000 20000 30000 40000 50000 60000 --definition DisparateImpact    --e -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.2 --d 0.05 --optimizer cmaes --dshift_var race --dshift_alpha 0.5 --cs_scale 1.5 --robust_loss
rem Original split, ratio - 0.4
python -m experiments.classification.adult_demographic_shift iclr_adult_antag_ds_rl_di    --n_jobs 8 --n_trials 10 --n_train 10000 20000 30000 40000 50000 60000 --definition DisparateImpact    --e -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.4 --d 0.05 --optimizer cmaes --dshift_var race --dshift_alpha 0.5 --cs_scale 1.5 --robust_loss
rem Original split, ratio - 0.6
python -m experiments.classification.adult_demographic_shift iclr_adult_antag_ds_rl_di    --n_jobs 8 --n_trials 10 --n_train 10000 20000 30000 40000 50000 60000 --definition DisparateImpact    --e -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.6 --d 0.05 --optimizer cmaes --dshift_var race --dshift_alpha 0.5 --cs_scale 1.5 --robust_loss
rem Original split, ratio - 0.8
python -m experiments.classification.adult_demographic_shift iclr_adult_antag_ds_rl_di    --n_jobs 8 --n_trials 10 --n_train 10000 20000 30000 40000 50000 60000 --definition DisparateImpact    --e -0.8 --n_iters 20000 --standardize --r_train_v_test 0.4 --r_cand_v_safe 0.8 --d 0.05 --optimizer cmaes --dshift_var race --dshift_alpha 0.5 --cs_scale 1.5 --robust_loss
