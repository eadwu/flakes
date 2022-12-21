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
    version = "1671602481";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c437ec2497ccd6b5ff5b2f6da86a8042e1ed951a/code-insider-x64-1671602481.tar.gz";
      sha256 = "1xcn00qqhi6xp4mfqx3lpy2bxxvwiqh8jhg7xf8kipg51x0kwd17";
    };
  }
)
