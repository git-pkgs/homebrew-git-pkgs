class Pom < Formula
  desc "Resolve Maven effective POMs in pure Go, no JVM required"
  homepage "https://github.com/git-pkgs/pom"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_amd64.tar.gz"
      sha256 "4e789f65e2b88fad7a0d5dbab8c1d78c6aa4093cea04cbc48aa9b7cebcaf74ba"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_arm64.tar.gz"
      sha256 "2f02b9923244605eb136d685d984d3086fbb5e07cf1a6f6274f40ee92f9d4408"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_amd64.tar.gz"
      sha256 "139dc0bbcff5d72c323f6d65b00d280e46ed7fbcb84550146a177265f0530efb"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_arm64.tar.gz"
      sha256 "f972b73d95507e7e2a5bd27f6eb9693436ed1b547e14dbf89946031fcfd130ed"
    end
  end

  def install
    bin.install "pom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pom -version")
  end
end
