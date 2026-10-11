class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.2/prosie_0.5.2_darwin_arm64.tar.gz"
      sha256 "5027bc9e79623a625173369e1c4e2c3fcb9f0a1e8387bf55151b6b64eb4353c1"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.2/prosie_0.5.2_darwin_amd64.tar.gz"
      sha256 "771c733f07973066142ede611ec572dbe2226a42a04193e246a2d1be12707176"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.2/prosie_0.5.2_linux_arm64.tar.gz"
      sha256 "da17a6c4c5ee9f17fb53a397c23764ddb5d74da0592602cd0c905444679c1441"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.5.2/prosie_0.5.2_linux_amd64.tar.gz"
      sha256 "baf3752cddfd4cfb720a1d528942bb8f98b96c35112d7343d2b0a80c95e48d8f"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/prosie version")
  end
end
