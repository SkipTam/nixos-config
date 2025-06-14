{ pkgs, config, lib, ...}:
{
environment.systemPackages = with pkgs;
[
    freetube
    spotify
    jellyfin-media-player
    calibre
    mumble
];
}