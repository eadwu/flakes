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
    version = "1619414945";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/633562da380f9161ea2fd783e561eed508cfbbea/code-insider-x64-1619414945.tar.gz";
      sha256 = "05ahagizsnf5wkar7v2nlnfq6m9yd2qphchx5yhlmxm31mhifiqc";
    };
  }
)
