{ config, pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    wget
    vim
    ansible
    openssh
    devenv
    ripgrep
    sshfs
    unrar
  ];
  programs.ssh.startAgent = true;
  nixpkgs.config.allowUnfree = true;

}
