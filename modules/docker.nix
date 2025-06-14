{ pkgs, config, ...}:
{
  virtualisation.docker.enable = true;
  users.users.austin = {
    extraGroups = [ "docker" ];
};
}