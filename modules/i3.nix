{ config, lib, pkgs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      gaps = {
        inner = 15;
        outer = 25;
      };
    };
  };
}
