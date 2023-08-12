{ config, pkgs, ... }:

{
  security.doas.enable = true;
  security.sudo.enable = false;
  security.doas.extraRules = [{
     users = [ "oxynoe" ];
     keepEnv = true;
     noPass = true;
     }];
}
