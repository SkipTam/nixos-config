{ pkgs, config, lib, ...}:
{
    # environment.systemPackages = with pkgs-unstable;
    # [
    #     mullvad-browser
    # ];
    
services.mullvad-vpn.enable = true;
}

