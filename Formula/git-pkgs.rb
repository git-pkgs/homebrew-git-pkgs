class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-amd64.tar.gz"
      sha256 "f750caf7e429974c40428c694f22983de40c10ed90b690bb2698c71006b74850"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-arm64.tar.gz"
      sha256 "ee95bd3ee531a0b88313e21fd7063abb457ad9e2e5ba202840301011e1fec032"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-amd64.tar.gz"
      sha256 "87fb6248a2ffc3c4a96e3d2c1cea258c2de8f68ea6091bf47f1656c034fcf761"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-arm64.tar.gz"
      sha256 "10383cd286f0038846ceee881f7100b695873c982483a04cd7db7ef02ceaa7c0"
    end
  end

  def install
    bin.install Dir["git-pkgs-*"].first => "git-pkgs"
  end

  test do
    system "#{bin}/git-pkgs", "--version"
  end
end
