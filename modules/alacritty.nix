{config, pkgs, ...}: 

let 
  terminalFont = { family = "JetBrains Mono"; };

in {
  programs.alacritty = {
    enable = true;
    
    settings = {
      background_opacity = 0.6;
      background_color = "#2e3440";
      
      fonts = {
        normal = terminalFont;
	bold = terminalFont;
	italic = terminalFont;
	italic_bold = terminalFont;
	size = "12";
      };

      cursor = {
        text = "#2e3440";
	cursor = "#d8dee9";
      };
      
      colors.normal = {
        black = "#3b4252";
        red = "#bf616a";
        green = "#a3be8c";
        yellow = "#ebcb8b";
        blue = "#81a1c1";
        magenta = "#b48ead";
        cyan = "#88c0d0";
        white = "#e5e9f0";
      };

      colors.bright = {
        black = "#4c566a";
        red = "#bf616a";
        green = "#a3be8c";
        yellow = "#ebcb8b";
        blue = "#81a1c1";
        magenta = "#b48ead";
        cyan = "#8fbcbb";
        white = "#eceff4";
      };
    };
  };
}
