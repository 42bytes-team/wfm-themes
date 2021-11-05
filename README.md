# Readme

## Requirenments

Node and npm\\yarn

Install [sass](https://www.npmjs.com/package/sass):  
`yarn global add sass`

## Compile

On linux, run `build.sh`
On win and linux, `sass --no-source-map "./{THEME_FOLDER}/_main.scss" compiled/{THEME_NAME}.css"`, where `{THEME_FOLDER}` is folder of your theme and `{THEME_NAME}` is name of your theme.

Add `--watch` flag, if you want sass to recompile your theme on every change.

## Test it in your browser

Install any extension that allow CSS injection, like [this](https://chrome.google.com/webstore/detail/stylebot/oiaejidbmkiecgbjeifoejpgmdaleoha?hl=en)
And throw your file at it.
