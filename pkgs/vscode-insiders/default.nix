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
    version = "1611120722";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a16beb1650908b830784be5564031fbfb5b71bd6/code-insider-x64-1611120722.tar.gz";
      sha256 = "00viwa7hx4s0a0lnnwafcl4h44fx0976i6lvqzv41wcqf4ykxvzx";
    };
  }
)
