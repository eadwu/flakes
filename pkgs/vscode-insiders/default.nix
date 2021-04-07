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
    version = "1617799319";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bb90ba3d5a5f8d114045b045f3bbe1ebc404f54a/code-insider-x64-1617799319.tar.gz";
      sha256 = "157cbj92khpfnr6naq5h5b1lz4lxkk7clmw23vhcgr8966jawf27";
    };
  }
)
