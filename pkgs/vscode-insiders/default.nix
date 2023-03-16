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
    version = "1678945848";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c97d5812f10c28efbcdb1fd404bc25afae873312/code-insider-x64-1678945848.tar.gz";
      sha256 = "1mqcvfnrb8cncxki6biscqp68y18184jsk0sgs351fwm64flpdjv";
    };
  }
)
