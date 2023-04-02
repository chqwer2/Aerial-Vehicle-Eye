


#!/bin/bash

download=false


# download
#gdown --folder 1sWDsfuZ3Up38EUQt7-JDTT1HcGHuJgvT
#!/bin/bash
cd MiDaS

if [ "$download" = true ] ; then
    #  dpt_swin2_tiny_256
    mkdir weights
    wget https://github.com/isl-org/MiDaS/releases/download/v3_1/dpt_swin2_tiny_256.pt

    mv dpt_swin2_tiny_256.pt weights

    wget https://github.com/isl-org/MiDaS/releases/download/v3_1/dpt_swin2_large_384.pt
    mv dpt_swin2_large_384.pt weights

    wget https://github.com/isl-org/MiDaS/releases/download/v2_1/midas_v21_384.pt
    mv midas_v21_384.pt weights

fi


source ~/.bashrc
conda activate bev

# Run

python run.py --model_type dpt_swin2_tiny_256 --input_path ../RAFT/fire_demo/frame \
            --output_path output/dpt_swin2_tiny_256   --side

python run.py --model_type dpt_swin2_large_384 --input_path ../RAFT/fire_demo/frame \
            --output_path output/dpt_swin2_large_384  --side

python run.py --model_type midas_v21_384 --input_path ../RAFT/fire_demo/frame \
            --output_path output/midas_v21_384       --side