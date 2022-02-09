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
    version = "1644385586";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d09aeab62c1f93acf4a89b93e9a8a82419d6249a/code-insider-x64-1644385586.tar.gz";
      sha256 = "0py63v3sb6f3n4wqmfbygwpabxqq9ilglz6kwrg007xyrkbf87h1";
    };

    postPatch = "";
  }
)
