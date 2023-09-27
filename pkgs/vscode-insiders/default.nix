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
    version = "1695812015";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8bac42dd1ec2bb223e847a16437b196c040680e5/code-insider-x64-1695812015.tar.gz";
      sha256 = "1xv88lph4fkwqzd6k2fal68cklsf964w3s917jzgdkxjp3nhwr08";
    };
  }
)
