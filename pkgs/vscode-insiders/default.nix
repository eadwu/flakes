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
    version = "1682641067";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5b6af0748264d83dc7a95f5f4b1c39196eaae8d9/code-insider-x64-1682641067.tar.gz";
      sha256 = "0wwq86ckv6nzd04k56kq6rq5dk62b11y42zq9g1p12niqkcf1y8a";
    };
  }
)
