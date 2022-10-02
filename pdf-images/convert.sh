#!/bin/sh
# set -x

img_dir="/images_dir"
img_name="pages"

# mkdir /images_dir/
# pdftoppm -png "$input_pdf" $img_dir/$img_name
# img2pdf --output "$output_pdf" --title "$title_pdf" --author "$author_pdf" $img_dir/$img_name*.png

DIR=$(pwd)

if ls $DIR/*.pdf &>/dev/null
then
    echo "PDF files found."

    for file in $DIR/*.pdf
    do
        rm "$img_dir" -fr
        mkdir "$img_dir"
        temp=$(basename "$file" ".pdf")
        output_pdf="$temp-images.pdf"

        echo "converting: '$file' to '$output_pdf'"

        pdftoppm -png "$file" "$img_dir/$img_name"
        img2pdf --output "$output_pdf" $img_dir/$img_name*.png
    done
else
    echo "No PDF script files found in folder '$DIR'"
fi
