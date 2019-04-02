#!/bin/bash
# renames all files in the current/specified folder with random numbers

usage() {
    echo "Usage: sh $0 <folder>"
    exit 1
}

if [[ $1 =~ ^(\-+h)+ ]]; then usage; fi

folder="${1-"./"}"

if [[ -d $folder ]]
then
    for file in "$folder"*.{jpg,png,jpeg}
    do
        filename=$(basename -- $file)

        if [[ -f $filename ]] && [[ $filename != $0 ]]; then
            echo "Sorting ${filename}"

            mv "$filename" "$(( (RANDOM % 10000000000) + 1)).${filename##*.}"
        fi
    done
else
    echo "$folder: Folder does not exist."
    exit 1
fi
