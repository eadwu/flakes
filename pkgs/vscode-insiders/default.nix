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
    version = "1688137051";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/39efe30bfc8e196f5be2119479092bd9eb83e174/code-insider-x64-1688137051.tar.gz";
      sha256 = "0pc855y461vyv2f2wb1yk9d1hf8a4s3dhqh1p3fx1ni27fb2wi0y";
    };
  }
)
