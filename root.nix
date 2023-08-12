{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
     chromium
     neovim
     wget
     doas
     curl
     ntfs3g
     pamixer
     wireplumber
     pulseaudio
     gtk4
     gtk3
     jre8
     zoxide
     git
     elixir_1_15
     clojure
     leiningen
     unzip
     nodejs_20
     jdk
     gcc
     zlib
     clojure-lsp
     lua-language-server
     elixir-ls
     efm-langserver
     gh
     alsa-utils
     waylock
     htop
     doas-sudo-shim
     luajitPackages.luarocks
   ];

   fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    nerdfonts
  ];


}
