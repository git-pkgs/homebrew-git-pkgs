class Licenses < Formula
  desc "Scan repositories for license text using ScanCode's rule corpus"
  homepage "https://github.com/git-pkgs/licenses"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_amd64.tar.gz"
      sha256 "2ec24ad1c55ceee8ae5a9bcd6a389cf87cab9970eae53dbceff9ff868904c329"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_arm64.tar.gz"
      sha256 "3e7b8f717d336640e23e1ca51139fea630f65a2c31d6483554977f2daae1ee1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_amd64.tar.gz"
      sha256 "15fb8e68a8a6ef529f1e893b2303e4029698961734ba2a824b321dd37cc3a636"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_arm64.tar.gz"
      sha256 "c473f608a3ba53d988cbc2953abcf0840b2c985111f21d56b28e1fefa75b8b1c"
    end
  end

  def install
    bin.install "licenses"
  end

  test do
    assert_match "licenses #{version}", shell_output("#{bin}/licenses -version")
  end
end
