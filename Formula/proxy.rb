class Proxy < Formula
  desc "Caching proxy for package registries"
  homepage "https://github.com/git-pkgs/proxy"
  version "0.9.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_amd64.tar.gz"
      sha256 "efc42d50309c11db9d6b0897eb644de3d9bf32028da6b1ef2d25b8e8de11dbf6"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_arm64.tar.gz"
      sha256 "392feeef3f7f37122f26167de531785e8fe9ad1919d57002137b311c65abd067"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_amd64.tar.gz"
      sha256 "9e5506158f83508ed838eb022ed8d991e37677289c7585d70d6c60b81aea2dcb"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_arm64.tar.gz"
      sha256 "c109632fdac887282dcc2f9ae2d1b3284de6c3e1a7c17e8bea13796c14e5c49a"
    end
  end

  def install
    bin.install "proxy"
  end

  test do
    system "#{bin}/proxy", "--version"
  end
end
