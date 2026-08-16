class Pom < Formula
  desc "Resolve Maven effective POMs in pure Go, no JVM required"
  homepage "https://github.com/git-pkgs/pom"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_amd64.tar.gz"
      sha256 "f3c4ab637fbf3d117c8e54beff7cb53344327a418979478335b2f749d9ab87ab"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_darwin_arm64.tar.gz"
      sha256 "ce920167edc33121e020917bf387fa810b4f8f560228899915cf6a2da021694c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_amd64.tar.gz"
      sha256 "7a71810ac4ace04573e57303e5a775de538f7aa8bd745ba855b2fe0e2cb620a7"
    end

    on_arm do
      url "https://github.com/git-pkgs/pom/releases/download/v#{version}/pom_#{version}_linux_arm64.tar.gz"
      sha256 "03664ebdc28e53abfee331a84c5fd8dce25c26411341db6e2745477198ca5a44"
    end
  end

  def install
    bin.install "pom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pom -version")
  end
end
