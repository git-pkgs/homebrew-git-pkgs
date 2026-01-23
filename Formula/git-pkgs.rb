class GitPkgs < Formula
  desc "Git-native package manager for monorepos"
  homepage "https://github.com/git-pkgs/git-pkgs"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-amd64.tar.gz"
      sha256 "c8673dc5c686bcbab833053c38078b73352f49c94d242ac3f44f23cc36a4f734"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-darwin-arm64.tar.gz"
      sha256 "1da38bbe004d53d7085cbf124957a0ab8102928730ad84961f4bbc46e3bea2b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-amd64.tar.gz"
      sha256 "43c97a3556785943bfbb26623c76c23aa4edf6e1abf89c9a5228a7b2ce6df16a"
    end

    on_arm do
      url "https://github.com/git-pkgs/git-pkgs/releases/download/v#{version}/git-pkgs-linux-arm64.tar.gz"
      sha256 "2b79ef50893a27b7e6999515d178541a6e6d0cba285574eb6e6f5739d2e8e987"
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
