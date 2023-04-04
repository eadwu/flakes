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
    version = "1680601744";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d317fbf2970b8f28bd7c59f545c59532cd5b293c/code-insider-x64-1680601744.tar.gz";
      sha256 = "1ccr9h11qm10vvg8wjclcfq0g2mp7yvhrda0clkhh0prwpn11pyr";
    };
  }
)
