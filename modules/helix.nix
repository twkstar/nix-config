{pkgs, ...}: {
  xdg.configFile."helix/themes".source =
    pkgs.fetchFromGitHub {
      owner = "catppuccin";
      repo = "helix";
      rev = "95f9093c81e1cb6a39af2e091f322088829c9d43";
      hash = "sha256-0UzXe1qBugR6Saoo/vYYn5wxI/v9gjvYCCSYuA4XtiU=";
    }
    + "/themes/default";

  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin_mocha";
      editor = {
        line-number = "relative";
        cursorline = true;
        color-modes = true;
        lsp.display-messages = true;
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        indent-guides.render = true;
      };
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
        esc = ["collapse_selection" "keep_primary_selection"];
      };
    };
  };
}
