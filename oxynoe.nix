{ config, pkgs, ... }:

{
  imports = 
     [
        <home-manager/nixos>
	./dotfiles/wezterm.nix
	./dotfiles/tofi.nix
	./dotfiles/hyprland.nix
	./dotfiles/waybar.nix
     ];


  users.users.oxynoe = {
     isNormalUser = true;
     extraGroups = [ "wheel" ]; 
   };

   home-manager.users.oxynoe = { pkgs, ... }: {
 

     home.stateVersion = "23.05";

     home.packages = with pkgs; [
       tree
       wezterm
       wl-clipboard
       grim
       slurp
       hyprpicker
       jq
       tofi
       dunst
       ranger
       ripgrep
       uwufetch
     ];
   };



}

