{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1648135896";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c5dece632b4b1ea98db872e1edcfc92994503274/code-insider-x64-1648135896.tar.gz";
      sha256 = "1kvz0b5pkdwsvhmsqbk685x2kiiswhll401pzic74r2ic0l6jpgp";
    };

    postPatch = "";
  }
)
