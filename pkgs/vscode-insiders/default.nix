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
    version = "1606763307";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ac165d7f974d70212be80cb15eaecfc1fd20b21a/code-insider-x64-1606763307.tar.gz";
      sha256 = "0nynywqkdp8qgwx0gn58y5pkg1c0mh8bh4slnlxy6f71yhknwgqv";
    };
  }
)
