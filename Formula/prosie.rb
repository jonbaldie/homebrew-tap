class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.1/prosie_0.5.1_darwin_arm64.tar.gz"
      sha256 "ae45d0c21ad93b2ff7d4b8cee66576e61152cada55939f7164ad3b66ddfd9a64"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.1/prosie_0.5.1_darwin_amd64.tar.gz"
      sha256 "b2bbdc1b2c4a9fa73ef0e2062061707f3d978059c0d8064041fc71ec0c514fbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.1/prosie_0.5.1_linux_arm64.tar.gz"
      sha256 "8dff63a3aac044de7d3ddf5d3b87e9c0fcb3cdd4c7399ce4a95a2b392f99f00b"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.1/prosie_0.5.1_linux_amd64.tar.gz"
      sha256 "b4df05118cbdc37a92dd637e681a9b86135678ee72a0f36279124d66995f4e6a"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/prosie version")
  end
end
