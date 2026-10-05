class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.0/prosie_0.5.0_darwin_arm64.tar.gz"
      sha256 "3b30941ed610a312feb59fc4b8ea0c51216c0b6ba2959b78e51a69f07ef1f39d"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.0/prosie_0.5.0_darwin_amd64.tar.gz"
      sha256 "ab62b9fa266575b82489bb852c474fe95984cd900628f8465ba02176673ebd95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.0/prosie_0.5.0_linux_arm64.tar.gz"
      sha256 "759eaafe436a14baf6c61d9c3360656f86e91f491bfbb410b4e33438b22a27ca"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.0/prosie_0.5.0_linux_amd64.tar.gz"
      sha256 "e108e7247e38764ce3fa85a9810d3811d554b801f548f4d6ea6898f7cbe07f0b"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/prosie version")
  end
end
