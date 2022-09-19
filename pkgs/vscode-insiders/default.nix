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
    version = "1663566366";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd782eb059e133d3a20fdb446b8feb0010a278ad/code-insider-x64-1663566366.tar.gz";
      sha256 = "1qi8kd2kr9vdd1wbdc8phh4iqp9i3qp8bfl2jmdrxjp8mw4lnkvi";
    };
  }
)
