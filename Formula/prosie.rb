class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.0/prosie_0.1.0_darwin_arm64.tar.gz"
      sha256 "96ce6a536861e401c4dc6e6203418ef2bc95b914b7b9045675c62f2239717112"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.0/prosie_0.1.0_darwin_amd64.tar.gz"
      sha256 "3ec26bc1336bfc33e65f12cd267c93584e61460c6c4b2eb1100299ffb299d869"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.0/prosie_0.1.0_linux_amd64.tar.gz"
    sha256 "eebece60bc25f005cdbe5f56e704ef5e94b01f9c218d46140cdb47d9defc627f"
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/prosie version")
  end
end
