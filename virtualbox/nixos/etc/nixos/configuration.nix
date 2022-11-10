{ config, pkgs, ... }:

{

imports = [ <nixpkgs/nixos/modules/installer/virtualbox-demo.nix> ];

nix.settings.trusted-users = [ "demo" ];

time.timeZone = "Europe/Prague";

environment.systemPackages = with pkgs; [
  wget vim git
];

services.openssh.enable = true;

boot.extraSystemdUnitPaths = [ "/etc/systemd-mutable/system" ];

}