class Bookbeam < Formula
  desc "Official command-line interface for the BookBeam book distribution platform"
  homepage "https://github.com/jonbaldie/bookbeam-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.0/bookbeam-darwin-arm64.tar.gz"
      sha256 "f86d970146fce4f17c8d1fffb0d7e5f6814af8c481c7d165cd28f9caebf8fe5c"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.0/bookbeam-darwin-amd64.tar.gz"
      sha256 "3618cbf8f67ff95642a53bbf5df2ffa7d61c4713a58adcead89ae9d6f1e6a903"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.0/bookbeam-linux-arm64.tar.gz"
      sha256 "9e26e2f660a6c286ee455410140539ff74b1e956c0709b47a8bd09d9684869b5"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.0/bookbeam-linux-amd64.tar.gz"
      sha256 "e93fa17ff171930ba2e1da9f0982a310dd3262e6ba7e7cc5cdec3efdb27339eb"
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
