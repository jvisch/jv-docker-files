# Docker-image voor documentgeneratie

In de folder `pandoc-docker` staat een dockerfile om de image op te
bouwen. Deze image bevat Pandoc en TexLive (voor Latex/pdf). Daarnaast
is de ica-docs class templates geïnstalleerd en pandoc-filters. Verder
bevat de container git en make. Alle documentatie van deze repo is met
de image te genereren.

1.  Installeer Docker als je dat nog niet hebt (Windows, vermoedelijk
    moet WSL2 ingesteld zijn)

2.  Genereer met Docker build de image

         docker build -t jv/pandoc-docker .

    of roep `make` aan als je Make hebt geïnstalleerd.

    De optie `-t jv/pandoc-docker` mag hernoemd worden, maar is de name
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

5.  PlantUML is opgenomen met een filter om de diagrammen te genereren,
    zie <https://github.com/timofurrer/pandoc-plantuml-filter>
