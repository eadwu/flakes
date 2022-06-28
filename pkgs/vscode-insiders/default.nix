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
    version = "1656394959";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e7751367f79f327b8103bee33a07c16817a2c7cd/code-insider-x64-1656394959.tar.gz";
      sha256 = "11yg0ks6sz9y41ipb5an56npdvaahlsaaxa46s14sgbv66a681fn";
    };
  }
)
