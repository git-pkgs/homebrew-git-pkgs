class Brief < Formula
  desc "Detect a project's toolchain, configuration, and conventions"
  homepage "https://github.com/git-pkgs/brief"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_amd64.tar.gz"
      sha256 "920de73530c2064a47e564b63c0be5e485e18db792711a1c86743e10756f1d30"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_arm64.tar.gz"
      sha256 "058158f260abbc3f79e64d73ce6016cd6d6e4374c17b575f87a9b3e9231e8353"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_amd64.tar.gz"
      sha256 "90dcea44b0413bdcf75e5fac2f55d918a032af1693bf4d50b19d8a52bdc98973"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_arm64.tar.gz"
      sha256 "609b52e7f73d84dc79890d0a14194bc6c7f0a795a89b413818298da51bf5a1a3"
    end
  end

  def install
    bin.install "brief"
  end

  test do
    system "#{bin}/brief", "--version"
  end
end
