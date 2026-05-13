class Pin < Formula
  desc "Browser asset vendoring without npm"
  homepage "https://github.com/git-pkgs/pin"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_amd64.tar.gz"
      sha256 "92048ffc54785e17e18e5516320d4d812d5cf3120feac6de4c03dc2d8af5ff3e"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_arm64.tar.gz"
      sha256 "a91ea194a87da55dab592b8fea403bbdc7ff00c9ac4a2861d63bcac357a00284"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_amd64.tar.gz"
      sha256 "3d7910c5e93cc7ef6291ce3291c3913b98df585f02cde2cdb41017ff1bb512a0"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_arm64.tar.gz"
      sha256 "645bd32d6f87930c12b8aae44c6581c822f45c8b0f49c48580adcc57f0e0d3b1"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system "#{bin}/pin", "--version"
  end
end
