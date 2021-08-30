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
    version = "1630324897";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/44a4b19a910a287adef4daaeabcf68f2ba893c35/code-insider-x64-1630324897.tar.gz";
      sha256 = "17wn4nxp2m99gsajbnvhqs7pyfwk3clrrf7r4sy8q20nk49h5wgw";
    };
  }
)
