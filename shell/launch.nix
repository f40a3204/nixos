{ pkgs, ... }:

let
       launchscript = pkgs.writeShellScriptBin "dlaunch" ''
           #!/bin/sh
           app_name=$(tofi-run)
           eval "$app_name"
	   pkill dlaunch
       '';
in {
    environment.systemPackages = [ launchscript ];
    }
