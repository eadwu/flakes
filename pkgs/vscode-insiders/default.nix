{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603259484";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6c8c6008ef9d86e46b086a00f273b1fee5bd8c51/code-insider-x64-1603259484.tar.gz";
      sha256 = "07cjmw9mrb1vzbncn5myk8gp9npy73vfcsjkyf3s6c6ic3bjkq3l";
    };
  }
)
