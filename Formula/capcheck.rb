class Capcheck < Formula
  desc "Fail CI when Go code or dependencies gain new privileged operations"
  homepage "https://github.com/git-pkgs/capcheck"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_darwin_amd64.tar.gz"
      sha256 "484b6a2582029cbf8379e24ca48efba820bef7349bd2d629f07f9f87c2a56152"
    end

    on_arm do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_darwin_arm64.tar.gz"
      sha256 "a92abe32c903c2877f79bf7d9aad7bfc904cb2bd1966f5d958ab99dd14dd5c5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_linux_amd64.tar.gz"
      sha256 "aee1ee79510a61d8071ab49fd51111ce3a1392168b1ffcfd76179688a4a4a817"
    end

    on_arm do
      url "https://github.com/git-pkgs/capcheck/releases/download/v#{version}/capcheck_#{version}_linux_arm64.tar.gz"
      sha256 "82b9c06e92464ff717e6d2a160996ea731ea22485c6b1b2808620bb740283d4f"
    end
  end

  def install
    bin.install "capcheck"
  end

  test do
    system "#{bin}/capcheck", "--version"
  end
end
