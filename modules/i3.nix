{ config, lib, pkgs, ... }:

let 
  mod = "Mod4";

in {
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      modifier = mod;
        
      keybindings = lib.mkOptionDefault {
        "XF86AudioRaiseVolume" = "exec --no-startup-id pactl set-sink-volume 0 +5%";
        "XF86AudioLowerVolume" = "exec --no-startup-id pactl set-sink-volume 0 -5%";
        "XF86AudioMute" = "exec --no-startup-id pactl set-sink-mute 0 toggle";
      };
              

      gaps = {
        inner = 18;
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
