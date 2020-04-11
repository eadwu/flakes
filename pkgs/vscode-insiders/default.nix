{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586543210";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/44c5185373d5f209cd6c0b5d29a216fb801da34e/code-insider-1586543210.tar.gz";
      sha256 = "01rbisvd2dix8wj2w6s477n3m1nnlym1wqld7sw48ymg7dr5grp9";
    };
  }
)
