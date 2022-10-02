#!/bin/sh

input_pdf=$1
output_pdf=$2
title_pdf=$3
author_pdf=$4

echo "input:  '$input_pdf'"
echo "output: '$output_pdf'"
echo "title:  '$title_pdf'"
echo "author: '$author_pdf'"

img_dir="/images_dir"
img_name="pages"

mkdir /images_dir/
pdftoppm -png "$input_pdf" $img_dir/$img_name
img2pdf --output "$output_pdf" --title "$title_pdf" --author "$author_pdf" $img_dir/$img_name*.png
