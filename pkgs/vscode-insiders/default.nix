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
    version = "1605087385";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/14140d2a1940b47b21ef4f5499649f7ab8c744cc/code-insider-x64-1605087385.tar.gz";
      sha256 = "1m9x7xqn6g8mkhdk7q04g4gmf5knkcdxqnlja2zpbqi2j199x0k4";
    };
  }
)
