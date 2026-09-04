class Pin < Formula
  desc "Browser asset vendoring without npm"
  homepage "https://github.com/git-pkgs/pin"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_amd64.tar.gz"
      sha256 "d2fc46aef2108c39db2136e3ba7ae261a9f1880714ed8ab6d305e44c8dcd4dde"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_arm64.tar.gz"
      sha256 "632f7aa0b028b5797919c99dd0e3e830b6f97969d87218e64686d03402c21c3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_amd64.tar.gz"
      sha256 "dd94b0958f4c855632040cb3f1736c4509ad01c4b71598d582960ef07df1acc9"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_arm64.tar.gz"
      sha256 "4b906353f954dedbe351766e68b0ba4008d9ff1b74987ebfa03c251ddd24c005"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system "#{bin}/pin", "--version"
  end
end
