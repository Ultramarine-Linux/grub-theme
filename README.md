# grub-theme
KDE Breeze style GRUB theme for Ultramarine Linux

![Breeze Dark](previews/breeze-dark.png)

**Breeze Dark**: `themes/breeze-dark`. Colours from KDE's Breeze Dark colour scheme.

![Breeze Light](previews/breeze-light.png)

**Breeze Light**: `themes/breeze-light`. Colours from KDE's Breeze Light colour scheme.

![Breeze Darker](previews/breeze-darker.png)

**Breeze Darker**: `themes/breeze-darker`. Colours from
[Xela Breeze Darker](https://github.com/xefensor/xela-breeze-darker) by xefensor.

## Install

#### Install with um tweaks
```sh
um tweaks enable ultramarine-grub-theme

# Follow the prompts from there
```

#### Manually install
```sh
# Install via Terra, pick a theme type from [light, dark, darker]
sudo dnf install ultramarine-grub-theme-breeze-[light, dark, darker]

# Set to the theme in your GRUB config, replace [light, dark, darker] with the option you installed
sudo sed -i 's|^GRUB_THEME=.*|GRUB_THEME="/boot/grub2/themes/ultramarine-breeze-[light, dark, darker]/theme.txt"|' /etc/default/grub

# Regenerate the GRUB config to apply changes
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```

## ToDo
- [x] Add different modes
  - [x] breeze-light
  - [x] breeze-dark
  - [x] [breeze-darker](https://github.com/xefensor/xela-breeze-darker) (default um theme in upcoming releases?)
- [ ] Package in Terra
- [ ] Switch to reuse licensing
