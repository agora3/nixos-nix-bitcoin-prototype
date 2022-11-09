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

| Environment | Version | HowTo |
|-------------|---------|-------|
| GDE | GNOME, x86_64 CPU | https://nixos.org/download.html#nixos-iso |
| GDE | Plasma Desktop, x86_64 CPU | https://nixos.org/download.html#nixos-iso |
| CLI | x86_64 CPU | https://channels.nixos.org/nixos-22.05/latest-nixos-minimal-x86_64-linux.iso |
| CLI | x86 CPU | https://channels.nixos.org/nixos-22.05/latest-nixos-minimal-i686-linux.iso |

### OVA template deployment


### vpsfree.cz deployment

[NixOS on vpsfree.cz](https://kb.vpsfree.cz/navody/distribuce/nixos)
[nixops with vpsfree.cz](https://kb.vpsfree.cz/navody/vps/vpsadminos/nixops)