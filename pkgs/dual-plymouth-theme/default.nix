{ lib
, mkTheme
, boot ? null
, shutdown ? null
}:

assert boot != null && shutdown != null;

mkTheme rec {
  pname = "dual-plymouth-theme";
  version = "2020-04-07";

  src = lib.cleanSource ./src;

  postInstall = ''
    mkdir -p $out/share/plymouth/themes/${pname}/images

    for f in ${shutdown}/${shutdown.themePrefix}/images/*.png; do
      filename="$(basename "$f")"
      cp "$f" "$out/share/plymouth/themes/${pname}/images/shutdown-$filename"
    done

    cp -r ${boot}/${boot.themePrefix}/images/* $out/share/plymouth/themes/${pname}/images
  '';
}
