class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_amd64.tar.gz"
      sha256 "ea0a70154525f108911d17967e22f56472c5c9057a28ad720684990225029d10"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_darwin_arm64.tar.gz"
      sha256 "8365b70b1eef7ebb6d332d378f1b5eebfd506a24a7c8a62c7514b9c557b16f62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_amd64.tar.gz"
      sha256 "2270fbcc7b0242772206380ee7d5b8f4ff93801d41a232012c1ee7cf4001b644"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs_#{version}_linux_arm64.tar.gz"
      sha256 "e874ee66d5266490e2566ad7d41c3d0c57e7cbf808995e3dce440b0abe91f000"
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
