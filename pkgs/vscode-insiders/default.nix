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
    version = "1664257487";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/36b1398cfbabbe91d695717d76b818a788f7b7d9/code-insider-x64-1664257487.tar.gz";
      sha256 = "1axj8nfq0p4gcwy902nwl9kw8j3yqzcsikjsdvgdhdj97xbd8z9g";
    };
  }
)
