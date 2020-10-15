{
  default = {
    name = "clearlinux";
    patch = ./pure.patch.xz;
  };

  kvm = {
    name = "clearlinux-kvm";
    patch = ./kvm.patch.xz;
  };
}
