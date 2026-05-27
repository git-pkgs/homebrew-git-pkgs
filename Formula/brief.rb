class Brief < Formula
  desc "Detect a project's toolchain, configuration, and conventions"
  homepage "https://github.com/git-pkgs/brief"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_amd64.tar.gz"
      sha256 "e23a1ceef94dd7223d069bc8f5820f510d0db38111821dc7fb97f30b973713e9"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_arm64.tar.gz"
      sha256 "cac21f52014f4865b7d40cf445e376bc5c400ac65d123af79ed6decb13691a17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_amd64.tar.gz"
      sha256 "d5037d1d98549f459841149c991df9550bd4d702248216112d846e81fe5d5558"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_arm64.tar.gz"
      sha256 "e3115882b4fbaeaa8341258c771f6229534ab1cf212d8e6e87a9502e7e247080"
    end
  end

  def install
    bin.install "brief"
  end

  test do
    system "#{bin}/brief", "--version"
  end
end
