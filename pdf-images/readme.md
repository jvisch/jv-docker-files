# PDF converter to PDF of images

## description

Docker image to convert a PDF-documents into a PDF-documents of images.
The process takes a PDF-document, converts all pages to images and then
creates a new PDF-document combining all the images so the content isn't
to easy to copy.

## Usage

### Build the docker image

Run in this folder: `docker build --tag jv/pdf-images .`

## Run the tool

`docker run -ti -v "<working_folder>:/sources/" --rm jv/pdf-images`

Bijvoorbeeld, alle pdf-documenten in de huidige folder

-   Windows powershell, Linux, Mac

    `docker run -ti -v "$(pwd):/sources/" --rm jv/pdf-images`

-   Windows command shell

    `docker run -ti -v "%CD%:/sources/" --rm jv/pdf-images`
