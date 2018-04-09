#!/bin/bash

if [ "$#" -eq 1 ]; then
    outputPath="$1/EPIC_KITCHENS_2018"
else
    outputPath="$HOME/Downloads/EPIC_KITCHENS_2018"
fi

echo -e "
### ------------------------------------------------------- ###
"
echo "### Downloading into $outputPath"
echo -e "
### ------------------------------------------------------- ###
"

epic_download() {
    local url=$1
    local path=$2
    local niceFilePath=$3
    
    echo -ne "# Downloading "$niceFilePath"	"
    wget --progress=dot -N -P "$path" "$url" 2>&1 | grep --line-buffered "%" | sed -u -e "s,\.,,g" | awk '{printf("%4s", $2)}'
    echo -ne ""
    echo " # done"
}

epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/rgb/train/P24/P24_01.tar" "$outputPath/frames_rgb_flow/rgb/train/P24" "frames_rgb_flow/rgb/train/P24/P24_01.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/rgb/train/P24/P24_02.tar" "$outputPath/frames_rgb_flow/rgb/train/P24" "frames_rgb_flow/rgb/train/P24/P24_02.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/rgb/train/P24/P24_03.tar" "$outputPath/frames_rgb_flow/rgb/train/P24" "frames_rgb_flow/rgb/train/P24/P24_03.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/rgb/train/P24/P24_04.tar" "$outputPath/frames_rgb_flow/rgb/train/P24" "frames_rgb_flow/rgb/train/P24/P24_04.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/rgb/train/P24/P24_05.tar" "$outputPath/frames_rgb_flow/rgb/train/P24" "frames_rgb_flow/rgb/train/P24/P24_05.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/rgb/train/P24/P24_06.tar" "$outputPath/frames_rgb_flow/rgb/train/P24" "frames_rgb_flow/rgb/train/P24/P24_06.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/rgb/train/P24/P24_07.tar" "$outputPath/frames_rgb_flow/rgb/train/P24" "frames_rgb_flow/rgb/train/P24/P24_07.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/rgb/train/P24/P24_08.tar" "$outputPath/frames_rgb_flow/rgb/train/P24" "frames_rgb_flow/rgb/train/P24/P24_08.tar"

echo -e "
### ------------------------------------------------------- ###
"
echo "### All done!"
echo -e "
### ------------------------------------------------------- ###
"
