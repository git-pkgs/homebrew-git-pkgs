class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_amd64.tar.gz"
      sha256 "685ead41522eb9e650b1f6e11e7f410ef6dc60c06162edde054650750e50a359"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_arm64.tar.gz"
      sha256 "b5da82ab91f6ebb88bb38fff1ae48166b9443cf7489010e18d91bbf65538672e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_amd64.tar.gz"
      sha256 "b95c465fb42172468a37e9033a9d74689acc596126229e48f3ed1a2b785b5cdf"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_arm64.tar.gz"
      sha256 "c0651b2ec73686aa901d02f7097749d6e1162c04ddd8ae9cc76c19c30b304b01"
    end
  end

  def install
    bin.install "git-pkgs"
    man1.install Dir["man/*.1"]
  end

  test do
    system "#{bin}/git-pkgs", "--version"
  end
end
