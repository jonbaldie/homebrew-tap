class Bookbeam < Formula
  desc "Official command-line interface for the BookBeam book distribution platform"
  homepage "https://github.com/jonbaldie/bookbeam-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.2/bookbeam-darwin-arm64.tar.gz"
      sha256 "834334e819bbf06f0224ff60062307654a9049c622a30105114b044704911897"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.2/bookbeam-darwin-amd64.tar.gz"
      sha256 "57a95122b445d738d725162bba905d6c521a3fe730466177db5b6d9ea42ff3ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.2/bookbeam-linux-arm64.tar.gz"
      sha256 "5aa1b302a119a33e8cb31440ee62c5c073804f603af83eab8c4427b3b7647f1a"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.2/bookbeam-linux-amd64.tar.gz"
      sha256 "70076e006e1d3a5b5f1a5d93412615a6ef76b42f4b90ed5e0af54a20d4f15ae2"
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
