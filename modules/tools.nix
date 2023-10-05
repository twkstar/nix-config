{pkgs, ...}: {
  programs = {
    git = {
      enable = true;
      delta.enable = true;
      extraConfig = {
        init.defaultBranch = "main";
      };
      lfs.enable = true;
      signing = {
        key = "DE96FD90716FDFE3";
        signByDefault = true;
      };
      userEmail = "tvvkstar@proton.me";
      userName = "Twinkling Stars";
    };

    fzf = {
      enable = true;
      defaultOptions = [
        "--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8"
        "--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc"
        "--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
      ];
    };

    direnv.enable = true;
    mcfly.enable = true;

    gh = {
      enable = true;
      settings = {
        git_protocol = "ssh";

        prompt = "enabled";

        aliases = {
          co = "pr checkout";
          pv = "pr view";
        };
      };
    };

    eza = {
      enable = true;
      enableAliases = true;
      git = true;
      icons = true;
    };

    bat = {
      enable = true;
      config = {
        theme = "Catppuccin-mocha";
      };
      themes = {
        Catppuccin-mocha = builtins.readFile (pkgs.fetchFromGitHub {
            owner = "catppuccin";
            repo = "bat";
            rev = "ba4d16880d63e656acced2b7d4e034e4a93f74b1";
            hash = "sha256-6WVKQErGdaqb++oaXnY3i6/GuH2FhTgK0v4TN4Y0Wbw=";
          }
          + "/Catppuccin-mocha.tmTheme");
      };
    };

    zellij = {
      enable = true;
      settings = {
        theme = "catppuccin-mocha";
      };
    };

    zoxide.enable = true;
  };
}
