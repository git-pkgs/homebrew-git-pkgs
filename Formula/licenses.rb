class Licenses < Formula
  desc "Scan repositories for license text using ScanCode's rule corpus"
  homepage "https://github.com/git-pkgs/licenses"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_amd64.tar.gz"
      sha256 "8371b4cf0050ab72e642f98414b63b0dbdc87b1d1eca54a5699f60595c38d0c8"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_arm64.tar.gz"
      sha256 "35fff4f49e14f1495861200a87c5ca9d547abe50e6ccae45a353bc9cc86c6dc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_amd64.tar.gz"
      sha256 "ccd28b059c36f028ccb6ecb68b6e3f7c90dcbb378d358b1e6113065db33c5939"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_arm64.tar.gz"
      sha256 "7c7a318d47cb9f871ecc02da1ffdc859ec93803cb17c576649d9f05c3b1e4284"
    end
  end

  def install
    bin.install "licenses"
  end

  test do
    assert_match "licenses #{version}", shell_output("#{bin}/licenses -version")
  end
end
