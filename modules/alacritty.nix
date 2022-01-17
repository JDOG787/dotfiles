{config, pkgs, ...}: 

{
  programs.alacritty = {
    enable = true;
    
    settings = {
      background_opacity = 0.4;

    };
  };
}
