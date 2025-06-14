{ pkgs, config, ...}:
{
  environment.systemPackages = with pkgs;
  [
    nixd
    vscodium
  ];

}
