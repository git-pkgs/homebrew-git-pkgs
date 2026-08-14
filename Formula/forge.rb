class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "d11e1a3ea83760047ceec1908478a79a4c1785d1b081d07c4a944b1848203ea3"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "6d354eb41083d85fb0547f6bc96590445abbdef41bf5159d6a09cf023bfa055b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "8acc4b30e57df5fe0dbc23f737b95b83b58302b574ade89eebaf4f1835fb326e"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "37ad6229205bada1f3e6eb59ccde4ea6c0ec15793859ca8a845be8a1fe2c160c"
    end
  end

  def install
    bin.install "forge"
    generate_completions_from_executable(bin/"forge", "completion")
  end

  test do
    system "#{bin}/forge", "version"
  end
end
