---
title: Titel van de presentatie.
author: Peter Peeters
date: 2019-09-01
---

# Sectiekop.

## Titel dia.

- Lorem ipsum dolor sit amet,
- consectetur adipiscing elit,
- sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

## Broncode.

```bash
# Usage: copy_iso_to_usb ISO DEVICE
copy_iso_to_usb() {
  local iso="${1}"
  local iso_size
  local destination="${2}"

  iso_size=$(stat -c '%s' "${iso}")

  debug "Copying ${iso} (${iso_size}B) to ${destination}"

  dd if="${iso}" \
    | pv --size "${iso_size}" \
    | sudo dd of="${destination}"
}
```

## Citaat.

> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
> et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
> aliquip ex ea commodo consequat.
> ---Cicero, "de Finibus Bonorum et Malorum"

## Links, vet, cursief.

*Cursieve* tekst

Tekst in **vet**

[Link naar website](https://www.hogent.be/)

## Afbeelding!

![hogent](assets/HOGENT.png)
