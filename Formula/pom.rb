class Pom < Formula
  desc "Resolve Maven effective POMs in pure Go, no JVM required"
  homepage "https://github.com/git-pkgs/pom"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_amd64.tar.gz"
      sha256 "4291e888c44b080c03f9eb20b9fc9b891ad5f50236dfd3c92969b45df8086eba"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_arm64.tar.gz"
      sha256 "ae645b5dd9027b71bfb3fa455de2e30870640a28e9eeca37e45d6b982d8400a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_amd64.tar.gz"
      sha256 "9c5c8d659a52ff87a1525f9a8114ef895e004726b4c58191763be18bdcb061d0"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_arm64.tar.gz"
      sha256 "a92478127224c055700b64f625632dc138a271d82eb4b405d37d3a2065e8254b"
    end
  end

  def install
    bin.install "pom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pom -version")
  end
end
