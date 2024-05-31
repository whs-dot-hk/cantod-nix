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
in {
  inherit cantod_7_0_1;
}
