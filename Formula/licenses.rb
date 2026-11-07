class Licenses < Formula
  desc "Scan repositories for license text using ScanCode's rule corpus"
  homepage "https://github.com/git-pkgs/licenses"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_amd64.tar.gz"
      sha256 "5a34e3ba4f85832e1471ee30c70410eb9fdc486398bd89d721a199b6f68585ea"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_arm64.tar.gz"
      sha256 "522f1ee2a67e87442590fd49252ac3d8e1a478191e6b30d9dd7fdec6eefde283"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_amd64.tar.gz"
      sha256 "6242f1eadab049fb4e898868f41beab277e4a11e27b5d60194532ff39e546d9c"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_arm64.tar.gz"
      sha256 "53bc71ab9b7085fb2d43e0e8ae619a17c971267e0d699773f91bd4a2be99bddb"
    end
  end

  def install
    bin.install "licenses"
  end

  test do
    assert_match "licenses #{version}", shell_output("#{bin}/licenses -version")
  end
end
