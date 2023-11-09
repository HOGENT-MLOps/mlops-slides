# Machine Learning Operations: slides

In deze repository vind je de slides die gebruikt wordt in de lessen van het olod Machine Learning Operations (3e jaar bachelor Toegepaste Informatica aan Hogeschool Gent).

Gerelateerde repositories:

- Slides van de lessen: <https://github.com/HOGENT-MLOps/mlops-slides>
  - Te bekijken op: <https://hogent-mlops.github.io/mlops-slides/>
- Opgave labo-opdrachten: <https://github.com/HOGENT-MLOps/mlops-labs>

## Slides genereren

Om zelf de slides te genereren heb je [Docker](https://docs.docker.com/engine/install/) nodig.

Haal deze repository binnen en genereer de slides met dit commando

```console
docker compose up -d slides-generator
```

Dit maakt een map `html` met alle slides in. Je kan de slides bekijken door hierin een html-bestand te openen.

## Slides aanpassen

Indien je de slides wil aanpassen, kan je het volgende commando gebruiken om een server met live reload te krijgen:

```console
docker compose up -d slides
```

Je kan nu de slides bekijken door naar <http://localhost:35729> te navigeren.

## Bijdragen

Bijdragen aan het hier gepubliceerde lesmateriaal zijn van harte welkom! Het verbeteren van schrijffouten, het maken van toevoegingen, het melden van onduidelijkheden... kan eenvoudig via een issue of een pull request.

## Licentie-informatie

Deze syllabus is samengesteld door [Thomas Aelbrecht](https://github.com/thomasaelbrecht) en valt onder de [Creative Commons Naamsvermelding-GelijkDelen 4.0 Internationale Publieke Licentie](https://creativecommons.org/licenses/by-sa/4.0/).
