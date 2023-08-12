{ config, pkgs, ... }:

{  
     imports = 
     [
        <home-manager/nixos>
     ];

   home-manager.users.oxynoe = { ... }: {
    programs.wezterm = {
    enable = true;
    extraConfig = ''
	local wezterm = require 'wezterm'

	local config = {}

	if wezterm.config_builder then
	  config = wezterm.config_builder()
	end

	config.enable_tab_bar = false
	config.warn_about_missing_glyphs = true
	config.hide_mouse_cursor_when_typing = false

	config.color_scheme = 'nord'
	config.window_padding = {
		left = 20,
  		right = 20,
  		top = 20,
  		bottom = 20,
	}

	config.font =
	  wezterm.font('Hack Nerd Font')

	-- config.window_background_opacity = 0.9

	config.warn_about_missing_glyphs = false

	return config
    '';

    };
  };


}

