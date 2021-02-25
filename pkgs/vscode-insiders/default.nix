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
    version = "1614239890";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/59c31364c707ee962cc594389966801af4ce69bd/code-insider-x64-1614239890.tar.gz";
      sha256 = "13bq2vg15y08x72qpw2fh5fnavvj31vzqmhxybf273m8lnqvp6x2";
    };
  }
)
