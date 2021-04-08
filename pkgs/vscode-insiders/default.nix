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
    version = "1617905215";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5904b7b686e9274631893d560fdbc55a5567f878/code-insider-x64-1617905215.tar.gz";
      sha256 = "05rxdfh9bg9pjg0gy2r1m9sdzsjy7qr3khfx6f4dpcp9ma5w6d65";
    };
  }
)
