class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "16116a460c5974b0ee95dccb2a8d2c7f63c7a082b4d55b40a9a7ef98d49ea1ed"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "4a4e16157357aa0d4dbf841521050298b28e8061a313a916fcffdef124ac5913"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "9b663cb5314f9a771c2e8d190bc7ef5f59951b44241ed9f47e9d2da00bfac113"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "d92b27b8ec43b24d1b882b14fd7d2398eee6b8ef8285969731fa5f23bcd1fbad"
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
