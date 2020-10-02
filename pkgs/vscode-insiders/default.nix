{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601646743";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0ecb64a2c8945dd1193967019f0734af539ca9c3/code-insider-x64-1601646743.tar.gz";
      sha256 = "1pimb450z65fqn10x1k925c9x32bxkj0ivdykafbmdrfshgfbdx9";
    };
  }
)
