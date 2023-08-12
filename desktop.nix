{ config, pkgs, ... }:

{
  services.xserver.displayManager.startx.enable = false;
  services.xserver.displayManager.sddm.enable = false;
  services.xserver.displayManager.lightdm.enable = false;
  services.xserver.enable = false;


  hardware = {
     opengl.enable = true;
  };

  environment.systemPackages = with pkgs; [
     waybar
     eww-wayland
     xdg-desktop-portal-hyprland
     hyprpaper
     hyprland
  ];


  nixpkgs.overlays = [
    (self: super: {
      waybar = super.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
    })
    ];

}
