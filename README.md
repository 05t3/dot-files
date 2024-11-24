# dot-files

# Introduction

This repository contains a collection of dotfiles for setting up a Linux environment tailored for techies and Unixporn enthusiasts. These configurations help enhance the visual appeal and functionality of your desktop setup with tools including i3, Alacritty, Picom, Neofetch, Rofi, Nitrogen, bumblebee-status, and Oh My Zsh.

# Prerequisites

Before installing these dotfiles, ensure you have the following dependencies installed on your system.

```bash
sudo apt install openvpn python3-tk curl cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 rustup  -y
```

# Installation Instructions

### i3 Window Manager

i3 is a tiling window manager designed for X11 (the X Window System). It automatically arranges windows in a non-overlapping tiles layout, which can be dynamically managed with keyboard shortcuts.

**Quick Links**

- [i3 User’s Guide](https://i3wm.org/docs/userguide.html)

```bash
# KALI - Install i3
sudo apt install i3 -y
```

> [!NOTE] NOTE
> After installing i3 , you may need to logout or reboot your system.

### Alacritty Terminal

[Alacritty](https://github.com/alacritty/alacritty) provide a fast, resource-efficient terminal emulator for users who require speed and responsiveness in their command-line interface.

**Quick Links**

- [alacritty-themes Github](https://github.com/alacritty/alacritty-theme)
- [Official Wiki](https://alacritty.org/config-alacritty.html)
- [Alacritty - ArchWiki](https://wiki.archlinux.org/title/Alacritty)

```bash
# Clone the Alacritty repository
git clone https://github.com/alacritty/alacritty.git
cd alacritty
rustup override set stable
rustup update stable
cargo build --release
# If all goes well, this should place a binary at target/release/alacritty.
# To install the desktop entry for Alacritty

sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

# Install Alacritty themes
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
```

Alacritty doesn't create the config file for you, but it looks for one in the following locations:

1. `$XDG_CONFIG_HOME/alacritty/alacritty.toml`
2. `$XDG_CONFIG_HOME/alacritty.toml`
3. `$HOME/.config/alacritty/alacritty.toml`
4. `$HOME/.alacritty.toml`

### Picom (Compositor)

Picom (formerly known as Compton) is a standalone compositor for Xorg, often used with window managers like i3. It provides features like shadows, transparency, and fading animations to enhance the visual appeal and usability of your desktop.

**Quick Links**

- [Picom - ArchWiki](https://wiki.archlinux.org/title/picom)
- [Picom Github](https://github.com/yshui/picom)

```bash
# KALI
sudo apt install picom -y
```

### Neofetch (System Information Tool)

Neofetch is a command-line system information tool that displays information about your system next to an image, your operating system logo, or any ASCII file of your choice. It can show information like your OS, kernel version, uptime, memory, and CPU details.

- [Image Backends Preview](https://github.com/dylanaraps/neofetch/wiki/Image-Backends)

```bash
# KALI
sudo apt install neofetch -y
```


### Rofi (Window Switcher)

Rofi is a window switcher, application launcher, and dmenu replacement. It is highly customizable and supports fuzzy searching, making it easy to find and launch applications and scripts.

**Quick Links**

- [rofi documentation](https://davatorium.github.io/rofi/)

```bash
# KALI
sudo apt install rofi -y
```

### Nitrogen (Background Browser and Setter)

Nitrogen is a lightweight tool for changing desktop wallpapers. It supports features like setting different wallpapers on multiple monitors and remembers your settings between sessions.

**Quick Links**

- [Nitrogen - ArchWiki](https://wiki.archlinux.org/title/nitrogen)

```bash
# KALI - Install Nitrogen
sudo apt install nitrogen -y
```

### Bumblebee-Status (Status Line)

Bumblebee-Status is a modular, theme-able status line generator for the i3 window manager. It can display various information like battery status, network conditions, and more.

**Quick Links**

- [Bumblebee Documentation](https://bumblebee-status.readthedocs.io/en/main/introduction.html)
- [List of available themes](https://bumblebee-status.readthedocs.io/en/main/themes.html)

```bash
# KALI - bumblebee-status
sudo apt install bumblebee-status
```

### Oh My Zsh (Zsh Configuration)

Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout...

- [Oh My Zsh Website](https://ohmyz.sh/)
- [Oh My Zsh Wiki](https://github.com/ohmyzsh/ohmyzsh/wiki)
- [Oh My Zsh Themes Preview](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
- [ohmyzsh-plugins](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins)
- [ohmyzsh-themes](https://github.com/ohmyzsh/ohmyzsh/tree/master/themes)

```bash
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Inspirations

- [Derek Taylor (DistroTube)](http://www.youtube.com/c/DistroTube)
  - [dotfiles](http://www.gitlab.com/dwt1/)



# Usage

After installing the configurations, you may need to logout or reboot your system. To start using the configurations, open the respective applications or use the keybindings set in the i3 configuration.


# Contributing

Contributions to this repository are welcome! If you have improvements or fixes, please follow these steps:

1. Fork the repository.
2. Create a new branch for your changes.
3. Make your changes.
4. Submit a pull request with a clear description of what your changes do.
