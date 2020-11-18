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
    version = "1605695268";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f11635ef1199ba5c43d9b83bb8b33036ea26d5b1/code-insider-x64-1605695268.tar.gz";
      sha256 = "0c078dcm4cgal4zsjc75k6rvsb4ywa5g34xjvz1wglyhljxvxh61";
    };
  }
)
