{pkgs, ...}: {
  xdg.configFile = {
    "nvim".source = pkgs.fetchFromGitHub {
      owner = "AstroNvim";
      repo = "AstroNvim";
      rev = "v3.37.1";
      hash = "";
    };
    "astronvim/lua/user".source = ./user_config;
  };

  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;

      viAlias = true;
      vimAlias = true;

      withPython3 = true;
      withNodeJs = true;
    };
  };
}
