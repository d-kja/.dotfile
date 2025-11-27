# Dotfile

No script ready, cherry pick whatever you feel like using.

## Some useful packages & drivers 

For reference, this is outdated and I'll have to re-do this.

```bash
# CPU Specific
intel-ucode  or  amd-ucode

# Drivers
ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

# Fonts
noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-liberation ttf-dejavu

# Useful
mpv mpvpaper git wget curl vim neovim firefox yay zip unzip ntfs-3g flatpak ufw fwupd dosfstools mtools reflector pacman-contrib

# Dots (Not all of them are here though, I forgor the majority)
go zig zellij zoxide fzf fd ripgrep go rustup bun hyprshell
```

## Extra

- Enable Colors & Multilib: `sudo nvim /etc/pacman.conf`
- Update mirrors: `sudo reflector --country Brazil --protocol https --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syyu`
- Enable firewall: `sudo systemctl enable ufw.service`
- Update cache timer: `sudo systemctl enable --now paccache.timer`
- Automate systemd-boot update: `sudo systemctl enable systemd-boot-update.service`
- Update zram size: `sudo nvim /etc/systemd/zram-generator.conf`

- References: 
    - [diolinux](https://plus.diolinux.com.br/t/dicas-sobre-instalacao-de-pacotes-basicos-e-configuracao-do-arch/68708) - [PR-BR]
    - [wiki lol](https://wiki.archlinux.org/title/General_recommendations)
    - [audio](https://forum.manjaro.org/t/how-to-make-linux-sound-great/146143) - [Kind of useful, but if you're gaming you might have to tweak a bit.]
    - [audio popping/crackling sound](https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/Troubleshooting#loud-pops-when-starting-a-sound)
