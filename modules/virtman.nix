{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; 
  [
   qemu
   quickemu
  ];
programs.virt-manager.enable = true;
users.groups.libvirtd.members = ["austin"];
virtualisation.libvirtd.enable = true;
virtualisation.spiceUSBRedirection.enable = true;
}