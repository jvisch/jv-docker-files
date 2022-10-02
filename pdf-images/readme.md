# PDF converter to PDF of images

## description
Docker image to convert a PDF-document into a PDF-document of images. The process takes a PDF-document, converts all pages to images and then creates a new PDF-document combining all the images so the content isn't to easy to copy. 

## Usage

### Build the docker image

Run in this folder: `docker build --tag jv/pdf-images .`

## Run the tool

`docker run -ti -v "<working_folder>:/sources/" --rm jv/pdf-images "<input>.pdf" "<output>.pdf" "<title>" "<authors>"`

Bijvoorbeeld:

`docker run -ti -v "%CD%:/sources/" --rm jv/pdf-images "voorbeeld pdf.pdf" "voorbeeld met images.pdf" "voorbeeld conversie" "Lorem Impersonators"`

- `%CD%` on Windows the current folder
- `$(pwd)` on Linux / Mac