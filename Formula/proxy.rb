class Proxy < Formula
  desc "Caching proxy for package registries"
  homepage "https://github.com/git-pkgs/proxy"
  version "0.3.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_amd64.tar.gz"
      sha256 "460312797986e20212b680f6aa296813ae3fe40ac0c64249b6fe1cf158766bad"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_darwin_arm64.tar.gz"
      sha256 "d4c68c5feb131c833dab472c35be9ecdf5bd003dd5cbaaa2cca38c7c98f17236"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_amd64.tar.gz"
      sha256 "bd6d0ffa46c6243d901abe13d849a8b8ad701f10d95bfa318ea3d2e15f31aa9e"
    end

    on_arm do
      url "https://github.com/git-pkgs/proxy/releases/download/v#{version}/proxy_#{version}_linux_arm64.tar.gz"
      sha256 "598b8fe320a43a003ef0a48e3acdb6578f4f42829e5278e1ce48bdb4184a0dc5"
    end
  end

  def install
    bin.install "proxy"
  end

  test do
    system "#{bin}/proxy", "--version"
  end
end
