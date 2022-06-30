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
    version = "1656567894";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f1abeeab7e51df997bbb0f1ff900321ad2f21ac0/code-insider-x64-1656567894.tar.gz";
      sha256 = "0car1v58aikp35avmbnhrk0f6v6rqmziiz09hd41qdrbwsk9499m";
    };
  }
)
