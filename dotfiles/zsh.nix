{ config, pkgs, ... }:

{

   users.defaultUserShell = pkgs.zsh;
   programs.zsh = {
	  enable = true;
	  autosuggestions.enable = true;
	  shellAliases = {
	    ll = "ls -l";
	  };
	  ohMyZsh = {
   		 enable = true;
    	         plugins = [ "git" ];
  	 };
	 shellInit = ''
	 export PS1='[%n@%m:%~]$ '
	 export PATH="$HOME/.luarocks/bin:$PATH"
	 export PATH="$HOME/.local/bin:$PATH"
	 eval "$(zoxide init zsh)"
	 '';
   };
}
