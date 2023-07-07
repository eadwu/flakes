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
    version = "1688686641";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/79ec05cb73486ad2d57a57a5f138b094d21c8644/code-insider-x64-1688686641.tar.gz";
      sha256 = "0gqjsi39x51774qm5mdkan1ggh7sal7sj5b6s8sqyhmylpk5y6qi";
    };
  }
)
