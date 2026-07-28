class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "f4b998adb1b42bf626211aedb454d76063d187051149828a615751ec0b94016e"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "0268f876e542ed20a9faa95fdd8aa68e4fad2c684315f01e5f1184a63323ab61"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "8eac2e7ccdfb72934cc0a5de5804e28c9fa8da9e4750e237d5624b04528d8e2b"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "65887ee07dca5bcb33f541d4970775d2e0464b5071c8ca3e00f7944fe6958ed8"
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
