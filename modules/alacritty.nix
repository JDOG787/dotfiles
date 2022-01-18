{config, pkgs, ...}: 

let 
  terminalFont = { family = "JetBrains Mono"; };

in {
  programs.alacritty = {
    enable = true;
    
    settings = {
      background_opacity = 0.5;
      background_color = "#2e3440";
      
      fonts = {
        normal = terminalFont;
	bold = terminalFont;
	italic = terminalFont;
	italic_bold = terminalFont;
	size = "12";
      };
     
    };
  };
}
