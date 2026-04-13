class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "6214de35112d1795525cf13ff86da06b4816e0a22fc69ef1978d780cdaeb3598"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "235ad80a499d1d302937b436ef30e93ff2f61aab01c9237bbb5ab8c4ae7ce9c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "3ece3c2ca1bf54910508ee0e6de2e92c74d578d09eb9006b9ac4a47fa340bbae"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "b4363fae95ac0a874e6000b496f3d6338b60a58bb9fe8238dbb2d7ca4e2ee9ef"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    system "#{bin}/forge", "version"
  end
end
