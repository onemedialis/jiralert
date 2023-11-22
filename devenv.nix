{ pkgs, ... }:

let
  languagePackages = {
    go = pkgs.go_1_21;
  };
in
{
  packages = with pkgs; [
    git
  ];

  languages = {
    go = {
      enable = true;
      package = languagePackages.go;
    };
  };
}
