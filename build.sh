#!/bin/bash

# create dist folders
rm -rf dist/*
mkdir -p dist/fp-build-dir
mkdir -p dist/squashfs/ept

# Unsquash Snap Image
cd dist

# echo retrieving EPT snap image
echo "grabbing EPT snap image"
wget -nv https://api.snapcraft.io/api/v1/snaps/download/6C4nJpuGFmcnRFZTx40PpLgTEr2DqYxZ_2.snap

echo "exploding ept snap"
unsquashfs -q -f -d "squashfs/ept" "6C4nJpuGFmcnRFZTx40PpLgTEr2DqYxZ_2.snap"

cd ../

# Run the build
#flatpak-builder --user --install --force-clean dist/fp-build-dir io.github.elixciv.EntropyPianoTuner.yaml
#flatpak-builder --user --install --force-clean build-dir io.github.elixciv.EntropyPianoTuner.yaml


