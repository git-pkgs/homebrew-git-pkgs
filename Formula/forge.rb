class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "227e3b3c61c80785af833d9c5387181990d39265afb26c8f93ad41b3d57e0e10"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "933bc25af2b74e058f2f1a46f34b61ec201ee5078d0fe0e983b5cde82e067ea4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "880d8792ba2debab57c121abeafe179c8598ea01726e6dcec599abe5edc2cc30"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "2b5f060f6c466f004efd24320ade43fc96a20deff124178338f165200fd9040f"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    system "#{bin}/forge", "version"
  end
end
