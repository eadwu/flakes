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
    version = "1605704119";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/78908e7eb4ff12fc2ed0dd1f17200fea48c56ab2/code-insider-x64-1605704119.tar.gz";
      sha256 = "1fl0i6d9glhfkaynb8n83d7afjk3srmlwsyvrp40qbxi3nah8h63";
    };
  }
)
