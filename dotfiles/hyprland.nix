{ config, pkgs, ... }:

{
   imports = 
   [
      <home-manager/nixos>
   ];

   home-manager.users.oxynoe = { ... }: {

     home.file.".config/hypr/hyprland.conf".text = ''

	monitor=,highres,1980x1080,1.2

	exec-once = hyprpaper & eww daemon & waybar

	env = XCURSOR_SIZE,24

	input {
	    kb_layout = us
	    kb_variant =
	    kb_model =
	    kb_options =
	    kb_rules =

	    follow_mouse = 1

	    touchpad {
		natural_scroll = no
		scroll_factor = 0.5

	    }
	    repeat_delay = 200 


	    sensitivity = 0 
	}

	general {

	    gaps_in = 5
	    gaps_out = 20
	    border_size = 4
	    col.active_border = rgb(D8DEE9) rgb(E5E9F0) 45deg
	    col.inactive_border = rgba(595959aa)

	    layout = master
	}

	decoration {

	    rounding = 10
	    blur = yes
	    blur_size = 3
	    blur_passes = 1
	    blur_new_optimizations = on

	    drop_shadow = yes
	    shadow_range = 4
	    shadow_render_power = 3
	    col.shadow = rgba(1a1a1aee)
	}

	animations {
	    enabled = yes

	    bezier = myBezier, 0.05, 0.9, 0.1, 1.05

	    animation = windows, 1, 7, myBezier
	    animation = windowsOut, 1, 7, default, popin 80%
	    animation = border, 1, 10, default
	    animation = borderangle, 1, 8, default
	    animation = fade, 1, 7, default
	    animation = workspaces, 1, 6, default
	}

	dwindle {
	    pseudotile = yes 
	    preserve_split = yes 
	}

	master {
	    new_is_master = false
	}

	gestures {
	    workspace_swipe = on
	}

	device:epic-mouse-v1 {
	    sensitivity = -0.5
	}


	$mainMod = SUPER

	binde=, XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+

	bindl=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-

	bind = , PRINT, exec, /home/oxynoe/.local/bin/grimblast copy area

	bind = $mainMod, m, exec, eww open eww

	bind = SUPER_SHIFT, RETURN, exec, wezterm start --always-new-process 
	bind = SUPER_SHIFT, C, killactive, 
	bind = SUPER_SHIFT, Q, exit, 
	bind = $mainMod, f, togglefloating, 
	bind = $mainMod, J, togglesplit, 

	bind = $mainMod, p, exec, dlaunch 

	bind = ALT, TAB, cyclenext,

	bind = $mainMod, h, movefocus, l
	bind = $mainMod, l, movefocus, r
	bind = $mainMod, k, movefocus, u
	bind = $mainMod, j, movefocus, d

	bind = SUPER_SHIFT, h, movewindow, l
	bind = SUPER_SHIFT, l, movewindow, r
	bind = SUPER_SHIFT, k, movewindow, u
	bind = SUPER_SHIFT, j, movewindow, d

	bind = SUPER_CONTROL, h, resizeactive, l
	bind = SUPER_CONTROL, l, resizeactive, r
	bind = SUPER_CONTROL, k, resizeactive, u
	bind = SUPER_CONTROL, j, resizeactive, d

	bind= $mainMod, return,layoutmsg,swapwithmaster master

	bind = $mainMod, 1, workspace, 1
	bind = $mainMod, 2, workspace, 2
	bind = $mainMod, 3, workspace, 3
	bind = $mainMod, 4, workspace, 4
	bind = $mainMod, 5, workspace, 5
	bind = $mainMod, 6, workspace, 6
	bind = $mainMod, 7, workspace, 7
	bind = $mainMod, 8, workspace, 8
	bind = $mainMod, 9, workspace, 9
	bind = $mainMod, 0, workspace, 10

	bind = $mainMod SHIFT, 1, movetoworkspace, 1
	bind = $mainMod SHIFT, 2, movetoworkspace, 2
	bind = $mainMod SHIFT, 3, movetoworkspace, 3
	bind = $mainMod SHIFT, 4, movetoworkspace, 4
	bind = $mainMod SHIFT, 5, movetoworkspace, 5
	bind = $mainMod SHIFT, 6, movetoworkspace, 6
	bind = $mainMod SHIFT, 7, movetoworkspace, 7
	bind = $mainMod SHIFT, 8, movetoworkspace, 8
	bind = $mainMod SHIFT, 9, movetoworkspace, 9
	bind = $mainMod SHIFT, 0, movetoworkspace, 10

	bind = $mainMod, mouse_down, workspace, e+1
	bind = $mainMod, mouse_up, workspace, e-1

	bindm = $mainMod, mouse:272, movewindow
	bindm = $mainMod, mouse:273, resizewindow

       '';
   };
}
