class Brief < Formula
  desc "Detect a project's toolchain, configuration, and conventions"
  homepage "https://github.com/git-pkgs/brief"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_amd64.tar.gz"
      sha256 "d999a623680224cca24a1b63df27cd98edbe983dd9f60ecacfbe842d93fa2547"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_arm64.tar.gz"
      sha256 "ad02415b20378c1f5e84d3fbb81c2c18f101afdf1632a1ede6b170a2eacb1f84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_amd64.tar.gz"
      sha256 "820a41439c85f089cbaaa722ebf54bde8d07cacd1087a84c4a0f14b4cf13f0a7"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_arm64.tar.gz"
      sha256 "72702294ef94d8e75c683b9bb92b8e496964b7fd69f095179cc0a18d60d71a19"
    end
  end

  def install
    bin.install "brief"
  end

  test do
    system "#{bin}/brief", "--version"
  end
end
