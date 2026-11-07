class Capcheck < Formula
  desc "Fail CI when Go code or dependencies gain new privileged operations"
  homepage "https://github.com/git-pkgs/capcheck"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_darwin_amd64.tar.gz"
      sha256 "22d551abdea041c8746bfd341da489a4c52c66878af1df31cc89cd9822570abb"
    end

    on_arm do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_darwin_arm64.tar.gz"
      sha256 "ce4ef2f178d0224b5e2fb2e6a4e3bca35109fcaea2e2942b467064b62cca2087"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_linux_amd64.tar.gz"
      sha256 "df138564ff44187d5c9416ba6ba3a74d739a10d9d4ba6455acc3d32868366abf"
    end

    on_arm do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_linux_arm64.tar.gz"
      sha256 "7788863e9fb4fe8631125c0e29db7a1dc8e7dcd8ec799a6780842170cff00bd4"
    end
  end

  def install
    bin.install "capcheck"
  end

  test do
    system "#{bin}/capcheck", "--version"
  end
end
