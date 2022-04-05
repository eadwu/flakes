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
    version = "1649156657";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/345f572e37ca69dc143c9fecb5f851fba9fcce8c/code-insider-x64-1649156657.tar.gz";
      sha256 = "1ckk6cldnxiy7gw5p8cgyly5cjh1d9qg4rgisn9am8z400hidr6a";
    };

    postPatch = "";
  }
)
