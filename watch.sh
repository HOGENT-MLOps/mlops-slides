#! /bin/bash

RESET="\033[0m"
YELLOW="\033[1;33m"
GREEN="\033[1;32m"

inotifywait -m -e modify *.md *.css |
  while read file_path file_event; do
    # copy css file
    if [[ $file_path == *.css ]]; then
      echo -e "${YELLOW}CSS file changed, generating all slides"
      make clean
      make all
      echo -e "${RESET}"
    # if file_path starts with number, it's a slide deck
    elif [[ $file_path =~ ^[0-9] ]]; then
      echo -e "${GREEN}File ${file_path} changed, regenerating...${RESET}"
      # replace md with html in file_path
      output_file_path=${file_path/\.md/\.html}

      # generate slides
      echo -e "${YELLOW}Generating slides..."
      make clean
      make "gh-pages/$output_file_path"
      echo -e "${RESET}"
    fi
  done
