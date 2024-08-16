with inputs.nixpkgs; let
  cantod_7_0_1 = buildGoModule rec {
    pname = "cantod";
    version = "7.0.1";
    src = fetchurl {
      sha256 = "sha256-ylmBb14oa9NNuy+YZD7Sncz9EWKpjDP2ObBmjQAsquw=";
      url = "https://github.com/Canto-Network/Canto/archive/refs/tags/v${version}.tar.gz";
    };
    vendorHash = "sha256-WkAhPi/ZyHTKTwzIag+pNeXkJLqz9vG1+bhBcaVfbtY=";
    subPackages = "cmd/cantod";
    doCheck = false;
  };
  cantod_8_0_0 = buildGoModule rec {
    pname = "cantod";
    version = "8.0.0";
    src = fetchurl {
      sha256 = "sha256-Zbjp30FFuwNtHAGvrH5Dls/Yu1VC5J5Jvcd9YeHecxI=";
      url = "https://github.com/Canto-Network/Canto/archive/refs/tags/v${version}.tar.gz";
    };
    vendorHash = "sha256-2Y1KfGuCEwYBKcl4HjISVW77Er1llXUT9JvvHpA+3K8=";
    subPackages = "cmd/cantod";
    doCheck = false;
  };
  cantod_8_1_1 = buildGoModule rec {
    pname = "cantod";
    version = "8.1.1";
    src = fetchurl {
      sha256 = "sha256-6VI3lo5JnUXonz0ZAFe2x9C1R2oFpbd1HAYTYY6GGts=";
      url = "https://github.com/Canto-Network/Canto/archive/refs/tags/v${version}.tar.gz";
    };
    vendorHash = "sha256-ngnlPV2Tf8SlKnn4PifxTEailOeXn7otazCuHRZH+oQ=";
    subPackages = "cmd/cantod";
    doCheck = false;
  };
in {
  inherit cantod_7_0_1;
  inherit cantod_8_0_0;
  inherit cantod_8_1_1;
}
