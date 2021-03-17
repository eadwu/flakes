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
    version = "1615971321";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b353f063393226ffc0e70f6b1afe3f362734071e/code-insider-x64-1615971321.tar.gz";
      sha256 = "0p7yy26psyd9jjr3jg1mxi8vixqpf82ha8fq89fp4a34p816kl8s";
    };
  }
)
