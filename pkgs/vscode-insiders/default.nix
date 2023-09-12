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
    version = "1694514614";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/41c6343f84e12869e4f26ccd189c6e4b916d770a/code-insider-x64-1694514614.tar.gz";
      sha256 = "1b43c27jkjzrfshw542r8yq0ig3b1qfkj62ykbzqp0cdwvkbqri8";
    };
  }
)
