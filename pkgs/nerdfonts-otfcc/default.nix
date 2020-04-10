{ lib
, runCommand
, jq
, otfcc
, ttfautohint
, nerdfonts-symbols
, drvs ? null
}:

assert drvs != null;

runCommand "nerdfonts-otfcc" {
  nativeBuildInputs = [ jq otfcc ttfautohint ];
} (
  let
    otfccdump = "otfccdump --glyph-name-prefix .2. --ignore-hints";
    otfccbuild = "otfccbuild --keep-average-char-width --ignore-glyph-order --short-post --dummy-dsig";
    glyphs = "${nerdfonts-symbols}/share/fonts/truetype/Symbols-2048-em Nerd Font Complete.ttf";
  in ''
    mkdir -p build/src
    mkdir -p build/dist

    ${otfccdump} -o build/src/nerd-glyphs.otd "${glyphs}"
    ${lib.concatMapStringsSep "\n" (
    drv: ''
      for f in `find ${drv.out}/share/fonts -name '*.otf' -or -name '*.ttf'`; do
        filename=$(basename "$f")
        file=''${filename%.*}
        ext=''${filename##*.}

        echo "patching $file"
        ${otfccdump} -o build/src/$file.otd "$f"

        jq --argfile patch build/src/nerd-glyphs.otd '
          [paths(scalars)] as $paths
          | reduce ($patch | paths(scalars) | select(.[0] == "cmap"),select(.[0] == "glyf")) as $p
            (.;
            if $paths | bsearch($p) > -1
            then .
            else setpath($p; $patch|getpath($p)) end)' build/src/$file.otd -- > build/src/$file-patched.otd

        ${otfccbuild} build/src/$file-patched.otd -o build/dist/$file.$ext
      done
    ''
  ) drvs}

    mkdir -p $out/share/fonts/opentype
    mkdir -p $out/share/fonts/truetype

    find build/dist -name '*.otf' -exec cp -t $out/share/fonts/opentype "{}" \;

    for f in `find build/dist -name '*.ttf'`; do
      filename=$(basename "$f")
      ttfautohint "$f" $out/share/fonts/truetype/$filename
    done
  ''
)
