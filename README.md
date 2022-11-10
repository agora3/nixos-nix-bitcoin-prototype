# nixos-nix-bitcoin-prototype
Prototype nix-bitcoin deployment and runtime on NixOS agnostically

## Where are You going to run Your NixOS instance?

| UC ID | Use Case Environment | HowTo |
|-------|----------------------|-------|
| 1 | Raspberry Pi | follow [ISO install](#iso-install) + GDE AArch64 SD image |
| 2 | VirtualBox VM | follow [OVA template deployment](#ova-template-deployment) |
| 3 | vpsfree.cz | follow [vpsfree.cz deployment](#vpsfreecz-deployment) |
| 4 | [Native NixOS containers](https://nixos.wiki/wiki/NixOS_Containers "It is possible to configure native systemd-nspawn containers, which are running NixOS and are configured and managed by NixOS using the containers directive.") | [wip](#native-nixos-containers) |
        
## How are You going to deploy Your NixOS instance?

### ISO install

| env | type | arch | img | help |
|-----|------|------|-----|------|
| GDE | GNOME | x86_64 |  [latest-nixos-gnome-x86_64-linux.iso](https://channels.nixos.org/nixos-22.05/latest-nixos-gnome-x86_64-linux.iso) | [manual/nixos/stable](https://nixos.org/manual/nixos/stable/) |
| GDE | Plasma Desktop | x86_64 | [latest-nixos-plasma5-x86_64-linux.iso](https://channels.nixos.org/nixos-22.05/latest-nixos-plasma5-x86_64-linux.iso) | [manual/nixos/stable](https://nixos.org/manual/nixos/stable/) |
| GDE | both | AArch64 | [latest-sd-image-aarch64-linux.img.zst](https://hydra.nixos.org/build/197954899/download/1/nixos-sd-image-22.11pre424902.09326850228-aarch64-linux.img.zst) | [NixOS on ARM-based RPi 4](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_4) |
| CLI | 64-bit | x86_64 | https://channels.nixos.org/nixos-22.05/latest-nixos-minimal-x86_64-linux.iso | [manual/nixos/stable](https://nixos.org/manual/nixos/stable/) |
| CLI | 32-bit | x86 | https://channels.nixos.org/nixos-22.05/latest-nixos-minimal-i686-linux.iso | [manual/nixos/stable](https://nixos.org/manual/nixos/stable/) |


### OVA template deployment

1. Download [OVA template](https://channels.nixos.org/nixos-22.05/latest-nixos-x86_64-linux.ova)
2. Import it to VirtualBox
3. Start the VM
4. `nix-env -i git`

### vpsfree.cz deployment

1. [NixOS on vpsfree.cz](https://kb.vpsfree.cz/navody/distribuce/nixos)
2. [nixops with vpsfree.cz](https://kb.vpsfree.cz/navody/vps/vpsadminos/nixops)

### Native NixOS containers

wip

## CLI Cheat Sheet

[`nixos-rebuild`](https://nixos.wiki/wiki/Nixos-rebuild)

## nix-bitcoin Rapid Prototyping

1. Flakes-based start of minimal `nix-bitcoin` QEMU VM

wip

2. Clone `nix-bitcoin` and create either NixOS container or QEMU VM (unprivileges account)

<code>

git clone https://github.com/fort-nix/nix-bitcoin<br>

cd nix-bitcoin/examples/<br>

sudo sysctl -w net.ipv4.ip_forward=1<br>

sudo bash ./deploy-container.sh<br>

</code>

## Backlog

1. [Podman rootless OCI containers](https://nixos.wiki/wiki/Podman)
2. [K8s on NixOS](https://nixos.org/manual/nixos/stable/index.html#sec-kubernetes)
3. [nixos-config/configuration.nix example](https://github.com/angristan/nixos-config/blob/master/configuration.nix)