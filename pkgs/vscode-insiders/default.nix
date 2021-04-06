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
    version = "1617706147";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/58186680eb97fe979e1d986bcfa983ab0a6228e4/code-insider-x64-1617706147.tar.gz";
      sha256 = "0936f5hfi0i3kqm0q5b0m73k5kb114mss3p3k0jfwnsqr5xmmp0j";
    };
  }
)
