# Mamba2D_MIL - classification
CUDA_VISIBLE_DEVICES=7 python main.py --task BRACS --model_type 2DMambaMIL --seed 0 --cuda_pscan --h5_path /data4/anhnguyen/datasets/BRACS_WSI/1024_40x_resection_default_preset/uni_feature_1024/h5_files  
CUDA_VISIBLE_DEVICES=7 python main.py --task BRCA --model_type 2DMambaMIL --seed 0 --cuda_pscan --h5_path /data4/doanhbc/TCGA-BRCA-breast_patches/uni_feature/h5_files
CUDA_VISIBLE_DEVICES=7 python main.py --task DHMC --model_type 2DMambaMIL --seed 0 --cuda_pscan --h5_path /data4/anhnguyen/datasets/DHMC_wsi_kidney_subtyping/uni_feature/h5_file
CUDA_VISIBLE_DEVICES=7 python main.py --task NSCLC --model_type 2DMambaMIL --seed 0 --cuda_pscan --h5_path /data4/doanhbc/TCGA-NSCLC_patches/uni_feature/h5_files
CUDA_VISIBLE_DEVICES=7 python main.py --task PANDA --model_type 2DMambaMIL --seed 0 --cuda_pscan --h5_path /data4/anhnguyen/datasets/PANDA_slide/uni_feature_20x_256/h5_files


CUDA_VISIBLE_DEVICES=7 python main.py --task KIRC --survival --model_type 2DMambaMIL --seed 0 --h5_path /data5/anhnguyen/datasets/TCGA-STAD-stomach/uni_feature/