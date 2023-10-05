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
    ripgrep
    nixgl.nixGLIntel

    # go
    go
    delve
    go-tools
    gopls
    golangci-lint

    # nix
    nil
    nixpkgs-fmt
    alejandra
    nurl
    nix-init

    # lua
    lua
    stylua
    lua-language-server

    # rust
    rust-bin.stable.latest.default
    rust-analyzer

    # other lsp
    vscode-langservers-extracted
    yaml-language-server
    taplo
    marksman
    nodePackages.bash-language-server
  ];
}
