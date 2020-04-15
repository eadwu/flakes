{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586929776";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1c36d747fbf113144d3bf82b0aa3cbd290714e38/code-insider-1586929776.tar.gz";
      sha256 = "1csh8fd8ykq559w686y36q2j490fdaq4kz011gnlj0nym6pfqw0z";
    };
  }
)
