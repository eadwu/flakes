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
    version = "1680037445";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/10295b5bae81a83b7d940f9d64756c115af662c8/code-insider-x64-1680037445.tar.gz";
      sha256 = "0w8bmhl9g0xr834195jl04i9pws08mm8wn3rk9jgkrs4wlyy28lb";
    };
  }
)
