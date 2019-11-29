#!/usr/bin/env bash

application=$1
version=$2
YOUR_PATH_WITH_DOC_SITE=$3

#application="cloud"
#version="master"
#YOUR_PATH_WITH_DOC_SITE="/c/Users/bonitasoft/Desktop/doc-site/doc/dist"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BUILD_DIR="$(readlink -m "$SCRIPT_DIR/../build")"
HTML_DIR_DEST="$(readlink -m "$BUILD_DIR/$application/html/$version")"
IMAGES_DIR_DEST="$(readlink -m "$BUILD_DIR/$application/images/$version")"
IMAGES_DIR_SOURCE="$(readlink -m "$SCRIPT_DIR/../md/images")"

# Convert md to html using bonita-doc scripts
echo "Convert md to html for current "

npm install
./convertMdToHtml.js -a $application -v $version
./taxonomy.js

# Copy html and images to bonita-doc-site
echo "Copy generated files to bonita-doc-site workspace"

rm -rf "$HTML_DIR_DEST" \
  && mkdir -p "$HTML_DIR_DEST" \
  && cp -TR "$BUILD_DIR/html" "$HTML_DIR_DEST"
rm -rf "$IMAGES_DIR_DEST" \
  && mkdir -p "$IMAGES_DIR_DEST" \
  && cp -TR "$IMAGES_DIR_SOURCE" "$IMAGES_DIR_DEST"


cp -TR "$BUILD_DIR/$application" "$YOUR_PATH_WITH_DOC_SITE/$application"

echo "Done!"