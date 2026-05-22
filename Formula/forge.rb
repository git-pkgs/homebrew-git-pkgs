class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "81e80679a8ae989f57a0b54634cbc8417ee6b635ac65923a5c677afe8de30644"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "919fb0084ca46b65077e9e6d9267d872a2e3e5c3c2afa118d33e036e01dc39e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "e9c682ec348df9970b3b8958d2e1e15da745da9ca6be336b56914c7ccdcfc3a2"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "979589ced26c603f5b95341dfd842f4bcc6f0c261991c71c6517913e9c705d68"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    system "#{bin}/forge", "version"
  end
end
