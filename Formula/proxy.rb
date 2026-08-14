class Proxy < Formula
  desc "Caching proxy for package registries"
  homepage "https://github.com/git-pkgs/proxy"
  version "0.7.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_amd64.tar.gz"
      sha256 "3673421922d0203ae5bba91fdc74664e4acf20fe6f45416451ed76f6f38e4c78"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_arm64.tar.gz"
      sha256 "0afdbbdbad9b2c3c0a22088d4928d2ba4993598a251d53404bc30c52575cd39e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_amd64.tar.gz"
      sha256 "10e26a684178db5d04ce08c4cd00e1d21c28130aa33e528f9af975b8f78f6d9b"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_arm64.tar.gz"
      sha256 "587b9ef65b733305ad5e5278e6bfc6b28b7e280c69c200343862284334ec1795"
    end
  end

  def install
    bin.install "proxy"
  end

  test do
    system "#{bin}/proxy", "--version"
  end
end
