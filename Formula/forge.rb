class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "0892ae5cf6dedeedf9b2f6f259080c6c40368d3815fbc04f7d4f66e32593441d"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "6ea2b9ddab7fc29816cd44c04de6f94690dde8c40c90b227bcd9adb41cae58a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "0c1f9e8753d2f6439bec86abb3f41ab0e58ea943fb0cda467cdce2d74475905d"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "9387570335066003a142d9e77f9a7e811c4e587e140f414edad04db4dbe57f9d"
    end
  end

  def install
    bin.install "forge"
    generate_completions_from_executable(bin/"forge", "completion")
  end

  test do
    system "#{bin}/forge", "version"
  end
end
