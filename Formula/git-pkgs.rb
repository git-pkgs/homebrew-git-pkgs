class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.15.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_amd64.tar.gz"
      sha256 "b5c6c037873f51405c26af9e506c82a6e647bf824c90d60ac4f041ac9d213af0"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_arm64.tar.gz"
      sha256 "0b603406e6889ec82f0efc66794aaa28c2478248d245bad021708fcbeca01a88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_amd64.tar.gz"
      sha256 "97d4a842ce5b6ed8335b76c132aae98a9119d3c465dcbdb95b4010f3b6057080"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_arm64.tar.gz"
      sha256 "00e10a8ffecef6c273789311ac1c1e706563cd3cf1f38268ee2c036227201a03"
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
