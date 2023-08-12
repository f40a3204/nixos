{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./oxynoe.nix
      ./root.nix
      ./boot.nix
      ./network.nix
      ./sound.nix
      ./desktop.nix
      ./security.nix
      ./dotfiles/zsh.nix
      ./dotfiles/efm.nix
      ./shell/launch.nix
      ./shell/clean.nix
    ];

  nix.gc = {
     automatic = true;
     dates = "weekly";
     options = "--delete-older-than 30d";
  };

  time.timeZone = "Asia/Hong_Kong";

  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.auto-optimise-store = true;

  services.chrony.enable = true;

  system.copySystemConfiguration = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "23.05";

}
