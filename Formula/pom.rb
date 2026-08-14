class Pom < Formula
  desc "Resolve Maven effective POMs in pure Go, no JVM required"
  homepage "https://github.com/git-pkgs/pom"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_amd64.tar.gz"
      sha256 "e7dcbddbad294acdc2ff43c3245a3c800f8ffb3a3ac316faeda07d00fdab8b3c"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_arm64.tar.gz"
      sha256 "ae1ce095e5bd3080ced0f24b381e93a68b0fb07e54cb5c1f14fb6d0a69e37c6c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_amd64.tar.gz"
      sha256 "f072c9e30d6610682a4bb9fd511459afb70622d1115b012793617a4e9266ff6d"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_arm64.tar.gz"
      sha256 "5eebe16c97468d3392a45a52069d988cfa1ea9a86128a52d404a83a859b991e2"
    end
  end

  def install
    bin.install "pom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pom -version")
  end
end
