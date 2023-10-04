{pkgs, ...}: {
  home.packages = with pkgs; [
    # tools
    duf
    du-dust
    lurk
    xh
    ranger
    yt-dlp
    fastfetch

    # go
    go
    delve
    go-tools
    golangci-lint

    # nix
    nil
    nixpkgs-fmt
    alejandra
    nurl
    nix-init

    # other lsp
    vscode-langservers-extracted
    yaml-language-server
    taplo
  ];
}
