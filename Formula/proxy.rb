class Proxy < Formula
  desc "Caching proxy for package registries"
  homepage "https://github.com/git-pkgs/proxy"
  version "0.6.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_amd64.tar.gz"
      sha256 "d50fc88ed52cdd27497cbf6de3b07bff43c26a22d3fb7ff35cf5b3524afa9b30"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_arm64.tar.gz"
      sha256 "82fbb38ba0bb39a8d0f98c14822025a897131de4f8b9ca6f6f70fddb6509cfce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_amd64.tar.gz"
      sha256 "3be18fdbad777ea863a50015e1e5a2f725dac5edd7c225fa5c1d7c558078c03e"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_arm64.tar.gz"
      sha256 "914bba33e4e112d729f5173ecaa6351f1c3373f030296b92f568fedfed9faa09"
    end
  end

  def install
    bin.install "proxy"
  end

  test do
    system "#{bin}/proxy", "--version"
  end
end
