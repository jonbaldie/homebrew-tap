class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.3/prosie_0.5.3_darwin_arm64.tar.gz"
      sha256 "ea6af6cd5d94082989c88db711449f2c9f981c1124893f8ae23e0a1c4766af1a"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.3/prosie_0.5.3_darwin_amd64.tar.gz"
      sha256 "cc47d50742de8388182e93ceba7069ea8381565b8a6412c99ab71fa3db9a7c33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.3/prosie_0.5.3_linux_arm64.tar.gz"
      sha256 "96986ab610ec6a899d0519acb1085a37753d7ea6b930b305300186d6488aea4f"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.3/prosie_0.5.3_linux_amd64.tar.gz"
      sha256 "6f530c63af02db45d452be4bc04672edaa2ecb0f00f334a811e6b922446aeb70"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.5.3", shell_output("#{bin}/prosie version")
  end
end
