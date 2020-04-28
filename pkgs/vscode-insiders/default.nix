{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1588053050";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/abb4a35cfc26102f93fd00df7b59ce1a19c2017a/code-insider-1588053050.tar.gz";
      sha256 = "1mlzc87m5zzsafx5aahfmcy1ahfysjqviw4rnnfkk048hprfl3sb";
    };
  }
)
