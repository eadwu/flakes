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
    version = "1617070357";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c71be15869a673c5ed7bfd3fe171757d2ba48142/code-insider-x64-1617070357.tar.gz";
      sha256 = "15az2mkfxgm892x5xrp1hlkp8yyvnbvrgz0ks1qibp58zw612p8q";
    };
  }
)
