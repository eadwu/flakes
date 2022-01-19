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
    version = "1642575754";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/16856037e075275f53b25b7e2dec2303e8e25728/code-insider-x64-1642575754.tar.gz";
      sha256 = "12l9gzwmm68xqd1ssifm7hbpkmcbfaj86q0mf9axrydrni5xnzyc";
    };

    postPatch = "";
  }
)
