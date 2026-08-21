class Licenses < Formula
  desc "Scan repositories for license text using ScanCode's rule corpus"
  homepage "https://github.com/git-pkgs/licenses"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_amd64.tar.gz"
      sha256 "e96fad397a6d3613a02c0a5dae5a5e98244d99ee71350355dac3775f96da0506"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_arm64.tar.gz"
      sha256 "68c2c507544b59032bd75bd6adc149da7c39a9fd04a31bb91be4f1931ec4a994"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_amd64.tar.gz"
      sha256 "d868ae112f834ebe723469514ba5cfc10da05b856c2107c46900a1086be332f3"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_arm64.tar.gz"
      sha256 "80202192a4f22a0e8995126796650a51db6fe7ff47aac162f6395d939980b989"
    end
  end

  def install
    bin.install "licenses"
  end

  test do
    assert_match "licenses #{version}", shell_output("#{bin}/licenses -version")
  end
end
