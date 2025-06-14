{ config, pkgs, ... }:
let
  amdgpu-kernel-module = pkgs.callPackage ./amdfix.nix {
    # Make sure the module targets the same kernel as your system is using.
    kernel = config.boot.kernelPackages.kernel;
  };
  # linuxPackages_latest 6.13 (or linuxPackages_zen 6.13)
  amdgpu-stability-patch = pkgs.fetchpatch {
    name = "amdgpu-stability-patch";
    url = "https://github.com/torvalds/linux/compare/ffd294d346d185b70e28b1a28abe367bbfe53c04...SeryogaBrigada:linux:f02ce40f7ff48498d94cd82080a71e0773c7b165.diff";
    hash = "sha256-q/gWUPmKHFBHp7V15BW4ixfUn1kaeJhgDs0okeOGG9c=";
  };
  /*
  # linuxPackages_zen 6.12
  amdgpu-stability-patch = pkgs.fetchpatch {
    name = "amdgpu-stability-patch-zen";
    url = "https://github.com/zen-kernel/zen-kernel/compare/fd00d197bb0a82b25e28d26d4937f917969012aa...WhiteHusky:zen-kernel:f4c32ca166ad55d7e2bbf9adf121113500f3b42b.diff";
    hash = "sha256-bMT5OqBCyILwspWJyZk0j0c8gbxtcsEI53cQMbhbkL8=";
  };
  */
in
{
  # amdgpu instability with context switching between compute and graphics
  # https://bbs.archlinux.org/viewtopic.php?id=301798
  # side-effects: plymouth fails to show at boot, but does not interfere with booting
  boot.extraModulePackages = [
    (amdgpu-kernel-module.overrideAttrs (_: {
      patches = [
        amdgpu-stability-patch
      ];
    }))
  ];
}
