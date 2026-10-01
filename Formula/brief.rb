class Brief < Formula
  desc "Detect a project's toolchain, configuration, and conventions"
  homepage "https://github.com/git-pkgs/brief"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_amd64.tar.gz"
      sha256 "8dc88f7b049329d143de3e5f7af1afdaa00116882699d70aabdf85c5c2437611"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_arm64.tar.gz"
      sha256 "b158adcedf340c43540df24db7c913406ea2d931ef3d552ded9839f6222f3599"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_amd64.tar.gz"
      sha256 "424e8585b10065ad95824ab507f068671f10e2363dd1f322979865f5bd455ec0"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_arm64.tar.gz"
      sha256 "e52509cf4dde0b17ddb13a3a0a6351efdef9b0ec92a35538d243e758a80930d9"
    end
  end

  def install
    bin.install "brief"
  end

  test do
    system "#{bin}/brief", "--version"
  end
end
