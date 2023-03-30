#!/bin/bash

download=false


# download
#gdown --folder 1sWDsfuZ3Up38EUQt7-JDTT1HcGHuJgvT
#!/bin/bash
if [ "$the_world_is_flat" = true ] ; then

  cd RAFT
  wget https://www.dropbox.com/s/4j4z58wuv8o0mfz/models.zip
  unzip models.zip

fi




cd RAFT
# Run
python demo.py --model=models/raft-things.pth --path=demo-frames


