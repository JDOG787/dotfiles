{ config, lib, pkgs, ... }

{
  xsession.windowManager.i3.package = pkgs.i3-gaps;
}
