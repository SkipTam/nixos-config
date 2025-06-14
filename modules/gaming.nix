{ pkgs, config, ...}:
{  
environment.systemPackages = with pkgs;
[
    wine64
    wineWow64Packages.unstableFull
    wineWow64Packages.waylandFull
    wine64Packages.staging
    discord
    winetricks
    protonup-qt
    arma3-unix-launcher
    ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  }; 
}

