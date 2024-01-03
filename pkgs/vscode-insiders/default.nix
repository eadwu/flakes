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
    version = "1704087369";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/df8db3a75a49b85c9636530a3557cdbc639f7bdc/code-insider-x64-1704087369.tar.gz";
      sha256 = "1nr42rbi6sdsbpvgw264y1i6hyxxy3k8f8isfmhdsninccr103kj";
    };
  }
)
