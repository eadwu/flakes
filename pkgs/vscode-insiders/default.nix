{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1599246072";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e4256dd1a02339bb1d56647ecd9134bf38bc7c03/code-insider-1599246072.tar.gz";
      sha256 = "14hps1r1gmsq5b2jiq3mng19kf2igj8qwqrh9s65h5hgz98hr5nl";
    };
  }
)
