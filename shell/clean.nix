{ pkgs, ... }:

let
       cleanstuffup = pkgs.writeShellScriptBin "cleanup" ''
           #!/bin/sh
	   nix-collect-garbage  --delete-old
           doas nix-collect-garbage -d
	   doas /run/current-system/bin/switch-to-configuration boot
       '';
in {
    environment.systemPackages = [ cleanstuffup ];
    }
