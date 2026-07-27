class Pin < Formula
  desc "Browser asset vendoring without npm"
  homepage "https://github.com/git-pkgs/pin"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_amd64.tar.gz"
      sha256 "72b1acd656cd72021b3db1d4ae48728f2fab15d2ea8c2c4a80a115de87d311b9
acb282984f06f47acceae9740300e00e5165a01fc9b9826e15f1a255073eac71"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_arm64.tar.gz"
      sha256 "854c10d6fb5cf5a397949f78ebaf8023eeb60bb8da8487808be27f65ce735581
60bc1014d77f99dc68b0239104632ad308d0421e2cdeba26de5dbf187ad2af94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_amd64.tar.gz"
      sha256 "eb11d420d42f27a37bcc9c7ce7970f0540cfc683d0aa011f11d7d62aa6cab5c0
a8cbf0bf317ecdfeeb69cfa70bd91a5681dfc13ab9dc113946e5ac7c6a0a6abf"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_arm64.tar.gz"
      sha256 "6e5502d461df2458b6ece87d90d5a1ac5faea6107559fdbdb761b743e1d9f249
ba3db00c5f885b4383c44e0d086df72be992ad5aee08fdd19215430606dd67a9"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system "#{bin}/pin", "--version"
  end
end
