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
    version = "1699024340";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e55009850900a64eeb37b2228c79855ceff63914/code-insider-x64-1699024340.tar.gz";
      sha256 = "06ablwjwllj3scm2461dn520c8qjva4laf3xl131x8d90s1fxjzj";
    };
  }
)
