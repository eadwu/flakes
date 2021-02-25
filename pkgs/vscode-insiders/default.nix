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
    version = "1614231109";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/93c941bef8958021ede8fd7a28314af28ad85233/code-insider-x64-1614231109.tar.gz";
      sha256 = "0i0wggz9851mp800irqc2c66m2bq5g1vk73fi9srglbxqzgzg7sk";
    };
  }
)
