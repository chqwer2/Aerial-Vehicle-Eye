


#!/bin/bash

download=false


# download
#gdown --folder 1sWDsfuZ3Up38EUQt7-JDTT1HcGHuJgvT
#!/bin/bash
if [ "$download" = true ] ; then
    #  dpt_swin2_tiny_256
    mkdir weights
    wget https://github.com/isl-org/MiDaS/releases/download/v3_1/dpt_swin2_tiny_256.pt

    mv dpt_swin2_tiny_256.pt weights

fi





# Run
python run.py --model_type <model_type> --input_path input --output_path output