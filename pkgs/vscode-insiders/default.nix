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
    version = "1605250979";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ee46c1f89ebb213e0827886f1688c0fbb55be49f/code-insider-x64-1605250979.tar.gz";
      sha256 = "1wh81mlpiygm6rqc9h4rvxc31vxb73w155hwl1wkc2672rl0cx7x";
    };
  }
)
