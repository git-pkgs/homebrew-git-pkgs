class Pin < Formula
  desc "Browser asset vendoring without npm"
  homepage "https://github.com/git-pkgs/pin"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_amd64.tar.gz"
      sha256 "ba38615d24e1e2a46183fe036399a4207116de786ff8250299307e9f5a51288d"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_darwin_arm64.tar.gz"
      sha256 "40ad90f38f413a315962206b7fe79428434f68bc0d9ae98c37f4a2b9fd952867"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_amd64.tar.gz"
      sha256 "451165d6f47d739f1026090efebb056ea5ddda7c39501ab6bce336d245379755"
    end

    on_arm do
      url "https://github.com/git-pkgs/pin/releases/download/v#{version}/pin_#{version}_linux_arm64.tar.gz"
      sha256 "414fb1245d83862389c0bbc489c72e72c5130cda90a62759b09a58d763382c2e"
    end
  end

  def install
    bin.install "pin"
  end

  test do
    system "#{bin}/pin", "--version"
  end
end
