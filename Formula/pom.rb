class Pom < Formula
  desc "Resolve Maven effective POMs in pure Go, no JVM required"
  homepage "https://github.com/git-pkgs/pom"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_amd64.tar.gz"
      sha256 "e314b02a4a77308f0467867d1360999856a0e8abd585100ac0e0db0cd091ea5b"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_arm64.tar.gz"
      sha256 "03685e5aac364bf0dafc6ba67dd8ad2ff2e86d3d3cabd83a487c9b31402be3ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_amd64.tar.gz"
      sha256 "1c347cb564734d3c4a8036ecfdad382746ab48e852785929faeb09768f5765d3"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_arm64.tar.gz"
      sha256 "311ae7dda184cff6983bb0dc9b3cbb5cdca88e3c5ebe14bfb38d1e579d82282a"
    end
  end

  def install
    bin.install "pom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pom -version")
  end
end
