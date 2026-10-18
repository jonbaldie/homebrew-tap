class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.4/prosie_0.5.4_darwin_arm64.tar.gz"
      sha256 "34ab2c26a72873941f57156d4c96f60a2ad4968dd72fc8fb5990a30a75be7f94"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.4/prosie_0.5.4_darwin_amd64.tar.gz"
      sha256 "513323966aef4098dc39b3d8694d52841003595a709880befb0044110f9d61ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.4/prosie_0.5.4_linux_arm64.tar.gz"
      sha256 "a8fc592d738eb535d1ba20ed3b225c66317b9701593adf9324d3fc238ac68075"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.4/prosie_0.5.4_linux_amd64.tar.gz"
      sha256 "17893fd7c0832c8981b4ebdc12f6d8e6fff247126da1e0a67b83036defb1bc5b"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.5.4", shell_output("#{bin}/prosie version")
  end
end
