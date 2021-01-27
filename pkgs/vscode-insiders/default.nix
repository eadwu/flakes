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
    version = "1611638920";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1a9dd758530782ee4bb09a15bdc484f3dcb9b5a3/code-insider-x64-1611638920.tar.gz";
      sha256 = "1k32a8s6wvxs2n9pm4jj7i4li7j95ng4g96687clr9lh4dy8g3wk";
    };
  }
)
