{config, pkgs, ...}:
{
  environment.systemPackages = [ pkgs.nerd-fonts.fira-code ];
  programs.starship = {
  enable = true;
  settings = {
    add_newline = false;
    #format = "$indicator$username$hostname$nix_shell$git_branch$git_commit$git_state$git_status$directory$jobs$cmd_duration$character";
    format = "$shell$username$hostname$container$git_branch$git_commit$git_state$git_status$directory$nix_shell$character";
    right_format = "$time";
    shell = {
      disabled = false;
      #format = "$indicator";
      fish_indicator = "󰈺";
      bash_indicator = "[BASH](bright-white)";
      zsh_indicator = "[ZSH](bright-green)";
    };
    username = {
      style_user = "bright-white";
      style_root = "bright-red bold";
      format = "[$user]($style)";
      show_always = true;
      disabled = false;
    };
    hostname = {
      ssh_only = false;
      disabled = false;
      ssh_symbol = "🌐 ";
      format = "[$ssh_symbol](bold blue)@[$hostname](red) ";
    };
    container = {
      disabled = false;
      symbol = "📦 ";
      format = "[$symbol \[$name\]]($style) ";
    };
    directory = {
      truncation_length = 8;
      truncation_symbol = "…/";
    };
    nix_shell = {
      disabled = false;
      symbol = "❄️ ";
      format = "$symbol";
    };
    time = {
      disabled = false;
      style = "white";
      format = "[$time]($style)";
    };     
  };
};
}