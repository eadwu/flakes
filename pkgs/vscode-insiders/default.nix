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
    version = "1670910463";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/11238faea62d570d77afe6edfe05c8b732c44a2b/code-insider-x64-1670910463.tar.gz";
      sha256 = "1b5p39gzw013blqqwy0rir878mc8vbcwlj7pn0gnc8584vpq5m87";
    };
  }
)
