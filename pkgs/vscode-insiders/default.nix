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
    version = "1697002440";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6a7a661757dec1983ff05ef908a2bbb75ce841e0/code-insider-x64-1697002440.tar.gz";
      sha256 = "10s6mxpii381y9hwvq367yjxhlp65l52yr2kdnaas7jdkc1175qc";
    };
  }
)
