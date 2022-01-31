Jorg Visch 4 feb 2018

# Beschrijving

Deze repository gaat al het lesmateriaal bevatten van OSM Software. Als
de uitvoering 2017-2018 sem 2 klaar is, worden alle bestanden naar de
Master gecommit.

# Opmerkingen

-   De ICA-huisstijl maakt gebruik van het Helvetica Neue font. Zie
    <https://work.han.nl/sites/ICA-OT/huisstijl/default.aspx> en klik op
    *Lettertype*. Installeer dat font om de PFD's netjes te generen.

-   Installeer Pandoc, bij voorkeur de nieuwste versie (Linux-distro's
    lopen achter, 2 feb 2018).

-   Installeer een Latex-converter (Op windows MikTex)

-   Installeer de Latex templates van ICA-docs
    (<https://git.icaprojecten.nl/stash/projects/BL/repos/ica-docs/browse>)

# Docker-image voor documentgeneratie

In de folder `pandoc-docker` staat een dockerfile om de image op te
bouwen. Deze image bevat Pandoc en TexLive (voor Latex/pdf). Daarnaast
is de ica-docs class templates geïnstalleerd en pandoc-filters. Verder
bevat de container git en make. Alle documentatie van deze repo is met
de image te genereren.

1.  Installeer Docker als je dat nog niet hebt (Windows, vermoedelijk
    moet WSL2 ingesteld zijn)

2.  Genereer met Docker build de image

         cd pandoc-docker\
         docker build -t jv/pandoc-docker .

    de optie `-t jv/pandoc-docker` mag hernoemd worden, maar is de name
    van de image die je nodig hebt bij het runnen.

3.  Genereren van documentatie.

    Bijvoorbeeld de *Courseplanning*

         cd Courseplanning

    in Linux / Mac / Windows Powershell (bijv. via VS Code).

         docker run -v "$(pwd):/sources/" --rm jv/pandoc-docker make

    in Windows command

         docker run -v "%CD%:/sources/" --rm jv/pandoc-docker make

    Er is een Makefile die de betreffende bestanden configureert en
    pandoc aanroept.

4.  Pandoc kan ook direct aangeroepen worden

         docker run -v "$(pwd):/sources/" --rm  jv/pandoc-docker pandoc inputfile.md -o outputfile.html

    Of interactief (`-ti` optie toevoegen en geen argument aan het eind)

         docker run -ti -v "$(pwd):/sources/" --rm  jv/pandoc-docker

    Er wordt dan een terminal geopend en kun je pandoc, make, wat dan
    ook aanroepen om snel wat uit te proberen.

