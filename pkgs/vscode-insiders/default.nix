{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600799391";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e6a742d2407c4a94c6540b49aa5f801468dbd1c8/code-insider-x64-1600799391.tar.gz";
      sha256 = "0l3swskc79mq5qr9l4vws9i9x17wxg21078z61q8p6hx9nwmw6va";
    };
  }
)
