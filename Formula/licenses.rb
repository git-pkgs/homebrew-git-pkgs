class Licenses < Formula
  desc "Scan repositories for license text using ScanCode's rule corpus"
  homepage "https://github.com/git-pkgs/licenses"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_amd64.tar.gz"
      sha256 "3760348f733dbb7a9126855f2361f28d11b4617df41207b1ce6548fe4621f81c"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_darwin_arm64.tar.gz"
      sha256 "45a5e3117efaca73c7e55dc79e7b5aa00599a6afd329be1598341e50fba33805"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_amd64.tar.gz"
      sha256 "68f2056a83628f80b90430b8767ac20282d29dcc1f341131af958eb4d7f20844"
    end

    on_arm do
      url "https://github.com/git-pkgs/licenses/releases/download/v#{version}/licenses_#{version}_linux_arm64.tar.gz"
      sha256 "a99db366cedef9c298fa178cb70436fb76a27543169c048e5864375b0194c010"
    end
  end

  def install
    bin.install "licenses"
  end

  test do
    assert_match "licenses #{version}", shell_output("#{bin}/licenses -version")
  end
end
