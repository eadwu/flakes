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
    version = "1662615896";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2d27f8db6a19f93529787731b0efa8f001478f6d/code-insider-x64-1662615896.tar.gz";
      sha256 = "1wnmmzhq769csy5qh1kwa1llwyc93sb9ic755jpl3f6vpczvlvmc";
    };
  }
)
