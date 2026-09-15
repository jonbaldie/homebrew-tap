class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.2/prosie_0.1.2_darwin_arm64.tar.gz"
      sha256 "c7fc0039a91836fdbbcaa4770e3943f66b0c8ca49d5ab4957277803164a3303a"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.2/prosie_0.1.2_darwin_amd64.tar.gz"
      sha256 "2b79b3e0f37484a239e25ef22d68b88dafd7d43778646205a1b2d9198acab96a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.2/prosie_0.1.2_linux_arm64.tar.gz"
      sha256 "388ce0b8b433605896f17a34e534b0f4baaa2287f9f27bbbcb4cbd7567dec0ea"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.2/prosie_0.1.2_linux_amd64.tar.gz"
      sha256 "58c333a1a820fd08c59f6e7292d6d2d281c43f130d58b7b8ea5f08f2eb23329b"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/prosie version")
  end
end
