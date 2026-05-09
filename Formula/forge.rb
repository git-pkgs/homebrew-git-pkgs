class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "b3c370ab0e36d90ca90e2660a84adaba705f86f651d92cf3b4d2ad34d3c9eab0"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "59fa7b33fadad4be8564e63633c2dbdfd911d2556e0a41376e58257e7b0f8624"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "dcc6fb27b959ec7b286faf5b762d91606623ff5e53b832358bbea396d3edbb11"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "7be6ec5f4de925eb8c686620057c97bf59a70f00e70345edfc6bddd45508bbdd"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    system "#{bin}/forge", "version"
  end
end
