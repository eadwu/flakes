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
    version = "1668610821";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/39ff7eb93b513976b85b69085414cab11f8ed4cc/code-insider-x64-1668610821.tar.gz";
      sha256 = "1h5y4zzr3kk40krgszpfg0z6qn3wpcikby1kg7nb0g6v7bnb98qf";
    };
  }
)
