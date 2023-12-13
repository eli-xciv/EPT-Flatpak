# Entropy Piano Tuner Flatpak
An unofficial packaging of [Entropy Piano Tuner](http://piano-tuner.org/)  

## Build

### Manually
```
# install necessary deps
#flatpak install flathub org.kde.Sdk
#flatpak install flathub org.kde.Platform

# run the build.sh script
./build.sh

# Build Flatpak
flatpak-builder --user --install --force-clean build-dir io.github.elixciv.EntropyPianoTuner.yaml

# Install Flatpak
flatpak-builder --user --install --force-clean dist/fp-build-dir io.github.elixciv.EntropyPianoTuner.yaml

# Run it
flatpak run --user io.github.elixciv.EntropyPianoTuner
```

## Contributing
TODO
