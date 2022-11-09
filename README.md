# nixos-nix-bitcoin-prototype
Prototype configuration for nix-bitcoin deployment and runtime on NixOS

## Where are You going to run Your NixOS instance?

| UC ID | Use Case Environment | HowTo |
|-------|----------------------|-------|
| 1 | Raspberry Pi | follow ISO install |
| 2 | VirtualBox VM | follow OVA template deployment |
| 3 | Cloud VPS |  |
| 3a | vpsfree.cz | follow vpsfree.cz deployment |
| 4 | [Native NixOS containers](https://nixos.wiki/wiki/NixOS_Containers "It is possible to configure native systemd-nspawn containers, which are running NixOS and are configured and managed by NixOS using the containers directive.") | WIP |
        
## How are You going to deploy Your NixOS instance?

### ISO install

| Environment | Version | Architecture | Image |
|-------------|---------|-------|--------|
| GDE | GNOME | x86_64 |  https://channels.nixos.org/nixos-22.05/latest-nixos-gnome-x86_64-linux.iso |
| GDE | Plasma Desktop | x86_64 | https://channels.nixos.org/nixos-22.05/latest-nixos-plasma5-x86_64-linux.iso |
| CLI | 64-bit | x86_64 | https://channels.nixos.org/nixos-22.05/latest-nixos-minimal-x86_64-linux.iso |
| CLI | 32-bit | x86 | https://channels.nixos.org/nixos-22.05/latest-nixos-minimal-i686-linux.iso |
| GDE | GNOME | AArch64 | https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_4 |

### OVA template deployment

https://nixos.org/download.html#nixos-virtualbox

### vpsfree.cz deployment

1. [NixOS on vpsfree.cz](https://kb.vpsfree.cz/navody/distribuce/nixos)
2. [nixops with vpsfree.cz](https://kb.vpsfree.cz/navody/vps/vpsadminos/nixops)