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
    version = "1635495417";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ff1e16eebb93af79fd6d7af1356c4003a120c563/code-insider-x64-1635495417.tar.gz";
      sha256 = "0cwbzhbi08dv1327vk659lal5z8q3kixxwb5wf8bjjnag5hmwqj8";
    };
  }
)
