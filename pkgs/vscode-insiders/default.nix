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
    version = "1625566714";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/99c968565a27846c330d3498e178184bcb9dd963/code-insider-x64-1625566714.tar.gz";
      sha256 = "10yvw1gxvdlsz3ahng2jad3di5amxr24k1pvph6kfg6rkvzhcllw";
    };
  }
)
