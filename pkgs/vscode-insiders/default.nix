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
    version = "1698915734";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a9d8fbca9ec9a7914f2077a83ca66a08c7e10f83/code-insider-x64-1698915734.tar.gz";
      sha256 = "07hl5iimyls4wm4spzak27x57jxw7xdf0jgknxl8x8w302fwsskf";
    };
  }
)
