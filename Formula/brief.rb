class Brief < Formula
  desc "Detect a project's toolchain, configuration, and conventions"
  homepage "https://github.com/git-pkgs/brief"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_amd64.tar.gz"
      sha256 "fe837ca4ac951ae537f9fae618b6f1d64d7038867a68509bc00925c6d11cc856"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_darwin_arm64.tar.gz"
      sha256 "2580f62551655605cba166194834bd350a0b9220c2693297541a07a53f7fe7ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_amd64.tar.gz"
      sha256 "182af2944cf97e7d6d369d839d227d5332530aba940ae4b2ec4fd1fd7d1c5488"
    end

    on_arm do
      url "https://github.com/git-pkgs/brief/releases/download/v#{version}/brief_#{version}_linux_arm64.tar.gz"
      sha256 "41e89104e525faf12ec50bedb73ae4f51391847ad3729809ed95e52470f792f2"
    end
  end

  def install
    bin.install "brief"
  end

  test do
    system "#{bin}/brief", "--version"
  end
end
