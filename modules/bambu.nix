{ pkgs, config, ...}:
{
environment.systemPackages = with pkgs;
[
    bambu-studio
];

}
