{ pkgs, config, ...}:
{

environment.systemPackages = with pkgs;
[
nmap
trippy
iperf
wget
ansible
dig
];

# Wireshark
programs.wireshark.enable = true;
users.users.austin = {
   extraGroups = [ "wireshark" ];

};
}
