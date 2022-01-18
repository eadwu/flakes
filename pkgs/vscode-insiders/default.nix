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
    version = "1642500668";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/23aa7ad51c95d90d48b1d352a316d7f0c2c4310d/code-insider-x64-1642500668.tar.gz";
      sha256 = "0yhkkkrwyyc4l2as8gd8zndhjfia4h3jzjg0snn2jgiffy4k4pg2";
    };

    postPatch = "";
  }
)
