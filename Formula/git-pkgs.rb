class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.13.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_amd64.tar.gz"
      sha256 "52c0d679d161777349fd72df006c449b208e7dd2a9738fd2dba3542d5dbd4ae1"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_arm64.tar.gz"
      sha256 "3c944199b9a56f1193e90d153eed265c527d96535471e66134e61e8959c9b24c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_amd64.tar.gz"
      sha256 "8aca0559142590c458cf47a997e98d72051a1b75f2fca84cb782c0971797ab05"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_arm64.tar.gz"
      sha256 "b96aadec0f0113479de09ef2fc68ef670710e6008af6c66b9e67bbc02a59f025"
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
