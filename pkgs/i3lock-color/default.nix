{ i3lock-color }:

i3lock-color.overrideAttrs (
  oldAttrs: {
    # Don't include ASAN runtime in release
    postPatch = (oldAttrs.postPatch or "") + ''
      sed -i 's/is_release=.*/is_release=yes/g' configure.ac
    '';
  }
)
