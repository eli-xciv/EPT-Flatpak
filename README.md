# Entropy Piano Tuner Flatpak
An unofficial packaging of [Entropy Piano Tuner](http://piano-tuner.org/)  

## Build

### Manually
```
# install necessary deps
flatpak install flathub org.kde.Sdk
flatpak install flathub org.kde.Platform

# pull snap package
cd dist
wget https://api.snapcraft.io/api/v1/snaps/download/6C4nJpuGFmcnRFZTx40PpLgTEr2DqYxZ_2.snap
cd ../

# run the build.sh script
./build.sh

flatpak-builder build-dir build.yml
```

## Install
TODO

## Contributing
TODO
