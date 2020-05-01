{ picom, fetchFromGitHub }:

picom.overrideAttrs
  (
    _: rec {
      version = "2020-04-01";

      src = fetchFromGitHub {
        owner = "yshui";
        repo = "picom";
        rev = "85086bc9843f408b761580357d4f88b5ea626ada";
        sha256 = "sha256-uI5DSQ/ea4usRkYD/0mIzFrgb5o8RUfoQfhXflFH05w=";
        fetchSubmodules = true;
      };

      patches = [ ./dual_kawase.patch ];
    }
  )
