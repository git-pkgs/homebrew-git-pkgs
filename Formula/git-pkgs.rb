class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-amd64.tar.gz"
      sha256 "11ef05d4fe577220f8887b2f8528b2e9b2745c7d6bf0eb82b85538e750578450"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-arm64.tar.gz"
      sha256 "424622a64f5f2c0ac2a903bb025764b839229191f416b93a150fa84875850209"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-amd64.tar.gz"
      sha256 "8a23eb8bb3a6767f06fe30afdc81385ea7393fa8a75e6a123ad96724eb26dec2"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-arm64.tar.gz"
      sha256 "ce526e14839ca2849707c60c0e8a801839d3e600d281a734c5d462a84df0de14"
    end
  end

  def install
    bin.install Dir["git-pkgs-*"].first => "git-pkgs"
    man1.install Dir["man/*.1"]
  end

  test do
    system "#{bin}/git-pkgs", "--version"
  end
end
