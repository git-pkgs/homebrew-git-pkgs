class Forge < Formula
  desc "CLI for working with git forges (GitHub, GitLab, Gitea, Bitbucket)"
  homepage "https://github.com/git-pkgs/forge"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "224e760725e242ed267ed7018412a63054dc7693250803ef2a934e63781bf3fe"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "47a8203cd20ce553090efa9d0448ec33067f776a08be433d501813c4d1b68481"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_amd64.tar.gz"
      sha256 "7cee99c3db419a5e623a776e76864eae1b48bd9519365881eccae3e468c4d83a"
    end

    on_arm do
      url "https://github.com/git-pkgs/forge/releases/download/v#{version}/forge_#{version}_linux_arm64.tar.gz"
      sha256 "669e51d5359b3bfc2b6218972bee99e49b66188764e4f72f39c76fd26621c7e6"
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
