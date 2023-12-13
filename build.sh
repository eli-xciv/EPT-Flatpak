#!/bin/bash

# create dist folders
mkdir -p dist/fp-build-dir

# Unsquash Snap Image
cd dist

# echo retrieving EPT snap image
# wget https://api.snapcraft.io/api/v1/snaps/download/6C4nJpuGFmcnRFZTx40PpLgTEr2DqYxZ_2.snap

echo "exploding ept snap"
unsquashfs -q -f -d "squashfs/ept" "6C4nJpuGFmcnRFZTx40PpLgTEr2DqYxZ_2.snap"

# Run the build
flatpak-builder --user --install --force-clean dist/fp-build-dir io.github.elixciv.EntropyPianoTuner.yaml
