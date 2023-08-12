{ config, pkgs, ... }:

{
  networking.hostName = "nixos"; 
  networking.networkmanager.enable = true;  
  networking.wireless.iwd.enable = true;
  networking.networkmanager.wifi.backend = "iwd";
}


