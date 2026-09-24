class Bookbeam < Formula
  desc "Official command-line interface for the BookBeam book distribution platform"
  homepage "https://github.com/jonbaldie/bookbeam-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.4/bookbeam-darwin-arm64.tar.gz"
      sha256 "0f41288ca7d1821cd2a32c74a9a2e0e30dbd6a50e00bf811a79fd75591962a62"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.4/bookbeam-darwin-amd64.tar.gz"
      sha256 "28db871abcc97617e91620b81025795f776e52e07597145c0e5b8d4cea39ebd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.4/bookbeam-linux-arm64.tar.gz"
      sha256 "fc5ebc7cedc6e6eff63185de5d2baf8cd6d52bb817d8f1cb40d4a2257e0121aa"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.4/bookbeam-linux-amd64.tar.gz"
      sha256 "38f3800ccc59cf6d9230b7e2d004a063215476777c101ec8258144e8ef4fe1e6"
    end
  end

  def install
    bin.install Dir["bookbeam-*"].first => "bookbeam"
  end

  test do
    assert_match "Manage book projects in your catalog", shell_output("#{bin}/bookbeam projects --help")
    assert_match "Authenticate with BookBeam", shell_output("#{bin}/bookbeam auth login --help")
  end
end
