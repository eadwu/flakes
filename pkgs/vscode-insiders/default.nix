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
    version = "1717392310";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f36826b4c1737fcc234a73ec043261ea893e6698/code-insider-x64-1717392310.tar.gz";
      sha256 = "047cqvjl99br4h3c5gbfc96dl3hc9h65jcgrbmla8m2qhnxxsxc5";
    };
  }
)
