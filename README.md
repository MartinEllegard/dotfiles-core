# Dotfiles Core

Core part of my dotfiles.
This repo should contain all the dotfiles for my applications
that are shared across multiple platforms.
For example terminal emulators, text editors and more.

## Setup guide

### 1. Install stow

```bash
# Arch
sudo pacman -S stow
#Mac
brew install stow
```

### 2. Clone repo in $HOME

```bash
cd
git clone https://github.com/martinellegard/dotfiles-stow.git
```

### 3. Setup dots

```bash
cd dotfiles-stow
stow .
```

## Platform specific setup

This repo should be pared with on these platform specific repos:
    - [dotfiles-linux](https://github.com/martinellegard/dotfiles-linux)
    - [dotfiles-mac](https://github.com/martinellegard/dotfiles-mac)
