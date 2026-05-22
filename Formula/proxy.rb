class Proxy < Formula
  desc "Caching proxy for package registries"
  homepage "https://github.com/git-pkgs/proxy"
  version "0.4.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_amd64.tar.gz"
      sha256 "2b66332c7e2bd1692de5656a2768ccef6db6945cadb406396ef2b716dffd07ec"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_arm64.tar.gz"
      sha256 "fdcd0983ba1d8aed2e44e3fcdccf407afd5c6c110614a72a1884773ec6364c62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_amd64.tar.gz"
      sha256 "a96b9e9125434f646a6bdffcbb43592ac3bbddec9bb2df2d0f71f110b694671d"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_arm64.tar.gz"
      sha256 "e6613a69629203d18d3ec264e104fdee79927a84e353e53da52d39843bf8a408"
    end
  end

  def install
    bin.install "proxy"
  end

  test do
    system "#{bin}/proxy", "--version"
  end
end
