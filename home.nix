{ config, pkgs, ... }:

{
  imports = [ 
    ./modules/i3.nix
    ./modules/alacritty.nix
  ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "jdog787";
  home.homeDirectory = "/home/jdog787";
  
  home.packages = [
   pkgs.alacritty
   pkgs.discord
   pkgs.picom
   pkgs.neovim
   pkgs.noisetorch
   pkgs.flameshot
   pkgs.neovide
   pkgs.nodejs
  ];
  nixpkgs.config.allowUnfree = true;
  services.picom.enable = true;
  services.flameshot = {
    enable = true; 

  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
