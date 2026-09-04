class Capcheck < Formula
  desc "Fail CI when Go code or dependencies gain new privileged operations"
  homepage "https://github.com/git-pkgs/capcheck"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_darwin_amd64.tar.gz"
      sha256 "cb17cbc82c547809404c812c8898118a703d7a71bdb83eed8d36698b942dabc8"
    end

    on_arm do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_darwin_arm64.tar.gz"
      sha256 "1f4cab6babe1b89e9f2fb29dcbf39340a4ee1a7813f14d27a3c90ad2d630f5f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_linux_amd64.tar.gz"
      sha256 "912a966120b9cb5422215303f7c9defdf16db4eb8228ee9aa4bca9725be02f10"
    end

    on_arm do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_linux_arm64.tar.gz"
      sha256 "55ed0e68c35da7cf2847159f8f0e193214e7ba754e2e36d4c595482f0c7b7a3c"
    end
  end

  def install
    bin.install "capcheck"
  end

  test do
    system "#{bin}/capcheck", "--version"
  end
end
