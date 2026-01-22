class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-amd64.tar.gz"
      sha256 "8f365a278c341952a6c2989c468d79a9363e27326d094eb2911e7f7e3e2d3c7e"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-arm64.tar.gz"
      sha256 "8eb2a6f3d521788c0024db621234da858cd25516ef504e351534fb010bde3254"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-amd64.tar.gz"
      sha256 "0d9f56034158c47870fa344b4024e6401e51ced5ac3dbb1bbe6db5c5c9190c2f"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-arm64.tar.gz"
      sha256 "84a6289c8d17b45f7d6fdde743c4629951bc8b164c68e65dcf5c10093f245612"
    end
  end

  def install
    bin.install Dir["git-pkgs-*"].first => "git-pkgs"
  end

  test do
    system "#{bin}/git-pkgs", "--version"
  end
end
