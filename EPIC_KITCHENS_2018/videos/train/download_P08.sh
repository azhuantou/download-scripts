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

epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_01.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_01.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_02.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_03.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_04.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_05.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_06.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_07.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_08.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_11.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_11.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_12.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_12.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_13.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_13.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_18.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_18.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_19.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_19.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_20.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_20.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_21.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_21.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_22.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_22.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_23.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_23.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_24.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_24.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_25.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_25.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_26.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_26.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_27.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_27.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P08/P08_28.MP4" "$outputPath/videos/train/P08" "videos/train/P08/P08_28.MP4"

echo -e "
### ------------------------------------------------------- ###
"
echo "### All done!"
echo -e "
### ------------------------------------------------------- ###
"
