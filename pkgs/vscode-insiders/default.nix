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
    version = "1686149490";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b380da4ef1ee00e224a15c1d4d9793e27c2b6302/code-insider-x64-1686149490.tar.gz";
      sha256 = "1m4faxgrbcl4pj8833qq7az8zq0j9mbwbpbk9xndykp88k28k79c";
    };
  }
)
