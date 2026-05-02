class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "145b39cfb7d031f67ca9f5a0ce81167632ee1f1a704e9ba1391af893cceba563"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "7b7c9280afcc0276fda9a92ad974987d10e959c7733e90d348628a304db8a1dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "c6758a358c99fa5173586aee24f28d449bf7083898a7a48dd13572b81b0331e6"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "25a1c04089a6961c2a6fa1a4eacf87b98ff9ce2e10bbf770f3c571a24dba9c29"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    system "#{bin}/forge", "version"
  end
end
