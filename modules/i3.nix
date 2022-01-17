{ config, lib, pkgs, ... }:

let 
  mod = "Mod4";

in {
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      modifier = mod;
        

      gaps = {
        inner = 15;
        outer = 25;
      };

      terminal = if config.programs.alacritty.enable then
        "${config.programs.alacritty.package}/bin/alacritty"
      else
        "i3-sensible-terminal";
      
      startup = [
        
        { 
          always = true;
          command = "${pkgs.feh}/bin/feh --bg-fill ~/Downloads/itl.cat_moving-space-wallpapers_562713.png";
        }
      ];
    };
  };
}
