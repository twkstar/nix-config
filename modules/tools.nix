{...}: {
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
  };
}
