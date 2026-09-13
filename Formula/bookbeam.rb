class Bookbeam < Formula
  desc "Official command-line interface for the BookBeam book distribution platform"
  homepage "https://github.com/jonbaldie/bookbeam-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.1/bookbeam-darwin-arm64.tar.gz"
      sha256 "e12d477ad2655ebc2d9f88f17b0301833ae076676649b5a3c233c8173d5492de"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.1/bookbeam-darwin-amd64.tar.gz"
      sha256 "dfbedbc1992a8cc29857ebf17fa2a3ed4aac4b28bf49187d5c5a7c995c21cb10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.1/bookbeam-linux-arm64.tar.gz"
      sha256 "905b11f06bdba0ccb30244b403a323ac2c1ff70abf33bd8801f4fa58cb0e4b02"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.1/bookbeam-linux-amd64.tar.gz"
      sha256 "5f18e20470c1396f7522b5372e98f21d1f192a2e55b371219d7f1baf63f28312"
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
