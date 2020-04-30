{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1588226274";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a0fe37870c42e0704a492cdc6b8550b4cf23f63c/code-insider-1588226274.tar.gz";
      sha256 = "0572njdpzmvs9hd3mc9kzgj3cyawkvldg912g49pic2yxpi5pwws";
    };
  }
)
