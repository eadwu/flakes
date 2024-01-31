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
    version = "1706671776";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/05047486b6df5eb8d44b2ecd70ea3bdf775fd937/code-insider-x64-1706671776.tar.gz";
      sha256 = "1j2107112kpb0zp907fmz557ck3a90mzrxyw27vjhfy5vvxqiiac";
    };
  }
)
