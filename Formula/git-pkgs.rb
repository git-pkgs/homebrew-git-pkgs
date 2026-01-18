class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-amd64.tar.gz"
      sha256 "6b22bcb08f72eef9022c2c7cf3a31308ddadefa64f869dc1c466613eb0f64ae7"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-arm64.tar.gz"
      sha256 "e1e16090e39e9d9bb0d2dc9ac39e504f656d1ef1e89e1c437ce3874bc172dea4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-amd64.tar.gz"
      sha256 "f1d8876afaaf40eb54b61371585ee13f161e2710861f8c848d853d3ac6a26443"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-arm64.tar.gz"
      sha256 "d48b89db0d3d939ce4ad75804311b085c110363549d60c4e8d2a694e817419dc"
    end
  end

  def install
    bin.install "git-pkgs"
  end

  test do
    system "#{bin}/git-pkgs", "--version"
  end
end
