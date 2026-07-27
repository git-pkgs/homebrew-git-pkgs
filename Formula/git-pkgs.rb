class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.18.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_amd64.tar.gz"
      sha256 "e5155588437bd4d2294018f7d8ef2fa7c6db9899617bd25213d265065773abd3"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_arm64.tar.gz"
      sha256 "34411013d0e1f9d76966b3888aa979e56262a7306072dc122574007409133dad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_amd64.tar.gz"
      sha256 "93c03888ac3d11a443f73c873e3b363604a5860fc5b93adc2d5d1bcd72636cd0"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_arm64.tar.gz"
      sha256 "e44707990924df17f9cadada981d4216d0692e6d688977ed1c88270157eea659"
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
