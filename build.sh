#!/bin/sh

USAGE="
$(basename "$0") [--theme NAME]
    Generate Warframe.market theme variants.

    Options:
      -t, --theme NAME           theme to compile, will compile all themes if empty.
      -h, --help                 show this help text.
"

TARGET_THEME="";

while [ $# -gt 0 ]
do
	key="$1"

	case $key in
		-t|--theme)
			TARGET_THEME="$2"
			TARGET_THEME="${TARGET_THEME,,}"
			shift # past argument
			shift # past value
			;;
		-h|--help)
			echo "$USAGE"
			exit 0
			;;
	esac
done

# Build CSS files
for THEME_FOLDER in ./themes/*
do
  if [ -d "${THEME_FOLDER}" ]; then
    THEME_NAME="${THEME_FOLDER#./themes/}"
    if [[ -n "${TARGET_THEME}" && "${TARGET_THEME}" != "${THEME_NAME,,}" ]]; then
      continue
    fi
    echo "Compiling theme: $THEME_NAME"
    sass --no-source-map "./$THEME_FOLDER/_main.scss" compiled/"$THEME_NAME.css"
  fi
done