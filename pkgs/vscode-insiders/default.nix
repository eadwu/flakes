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
    version = "1609911673";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9b6aaf1e86c8fec4c86c664edf5f713583c70fe5/code-insider-x64-1609911673.tar.gz";
      sha256 = "09sw6pjpxp1v5vgfzdhij6gcsi5rzcmsq8f41bzbwnvd4kggi1wm";
    };
  }
)
