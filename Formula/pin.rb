class Pin < Formula
  desc "Browser asset vendoring without npm"
  homepage "https://github.com/git-pkgs/pin"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_amd64.tar.gz"
      sha256 "72b1acd656cd72021b3db1d4ae48728f2fab15d2ea8c2c4a80a115de87d311b9"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_arm64.tar.gz"
      sha256 "854c10d6fb5cf5a397949f78ebaf8023eeb60bb8da8487808be27f65ce735581"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_amd64.tar.gz"
      sha256 "eb11d420d42f27a37bcc9c7ce7970f0540cfc683d0aa011f11d7d62aa6cab5c0"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_arm64.tar.gz"
      sha256 "6e5502d461df2458b6ece87d90d5a1ac5faea6107559fdbdb761b743e1d9f249"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system "#{bin}/pin", "--version"
  end
end
