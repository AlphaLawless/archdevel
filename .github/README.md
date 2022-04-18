# ArchDevel - Docker Image

## Purpose

The main purpose of creating this image was to develop on an arch distribution, while in another environment, be it macOS, Windows or another Linux distribution.

You might think: "why develop in an arch environment when you already have a development environment?" - This is for training and testing tools within the archlinux ecosystem. Just it!

## Image

- archlinux
- base-devel
- git
- curl
- neovim
- asdf

## Running

Build your own image
```
bash build-image.sh
```
Enter within a container with the Image
```
docker run -it alphalawless/archdevel bash
```

## LICENSE
[GPLv3 License](../LICENSE)
