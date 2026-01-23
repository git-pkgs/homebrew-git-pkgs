class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-amd64.tar.gz"
      sha256 "de0ada00b5f291d02092f8066225e47714829bcdc8a8a69a219964525a008274"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-arm64.tar.gz"
      sha256 "27cbf6ffdb971150ce45bfc6d392a39ee5e5c7af5ce5f93ec75f00768e485c9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-amd64.tar.gz"
      sha256 "0289c9fd684cef140d01883bf8b4fe09b763e2870cc303a9ec686bf38f6096c6"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-arm64.tar.gz"
      sha256 "3e8a91b07897b57d44bcad8b996e776a8d6e699e4822e38a5a561cb0d3e731b7"
    end
  end

  def install
    bin.install Dir["git-pkgs-*"].first => "git-pkgs"
  end

  test do
    system "#{bin}/git-pkgs", "--version"
  end
end
