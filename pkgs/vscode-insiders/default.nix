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
    version = "1644990054";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/52e65499654de7525e30df3a8228b69320796bf5/code-insider-x64-1644990054.tar.gz";
      sha256 = "0dcdq1awqgkqm7yq4b90k0yv0kmwyrir4avh4kc8z2rrlfpn0rrx";
    };

    postPatch = "";
  }
)
