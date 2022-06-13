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
    version = "1655121246";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/53130238b422606ffcd616126fb8c6c81c6e4436/code-insider-x64-1655121246.tar.gz";
      sha256 = "0imhxxvsjifsdd1hc14kz0jzpkxfm7lks3bkbh3n6zn244ayb3g2";
    };
  }
)
