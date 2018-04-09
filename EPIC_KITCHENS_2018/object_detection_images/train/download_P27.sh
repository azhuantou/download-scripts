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

epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P27/P27_01.tar" "$outputPath/object_detection_images/train/P27" "object_detection_images/train/P27/P27_01.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P27/P27_02.tar" "$outputPath/object_detection_images/train/P27" "object_detection_images/train/P27/P27_02.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P27/P27_03.tar" "$outputPath/object_detection_images/train/P27" "object_detection_images/train/P27/P27_03.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P27/P27_04.tar" "$outputPath/object_detection_images/train/P27" "object_detection_images/train/P27/P27_04.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P27/P27_06.tar" "$outputPath/object_detection_images/train/P27" "object_detection_images/train/P27/P27_06.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P27/P27_07.tar" "$outputPath/object_detection_images/train/P27" "object_detection_images/train/P27/P27_07.tar"

echo -e "
### ------------------------------------------------------- ###
"
echo "### All done!"
echo -e "
### ------------------------------------------------------- ###
"
