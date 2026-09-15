class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.2.0/prosie_0.2.0_darwin_arm64.tar.gz"
      sha256 "91692e82784199c46abb3aaf180ae4b23721e08173662ba35b75ed74d8e095e0"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.2.0/prosie_0.2.0_darwin_amd64.tar.gz"
      sha256 "2a423e2bd9566f5936bd31ddb500e646f7bdafdbc22c80cbb5a2d7605bb5a012"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.2.0/prosie_0.2.0_linux_arm64.tar.gz"
      sha256 "8e62c7da9014bb3d922640e4654e38f102a2c9f7a78db41f18b0e4433b0dcb5c"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.2.0/prosie_0.2.0_linux_amd64.tar.gz"
      sha256 "9b88243b5e0a69bd4a854ebdb47749b96c4269e07ae6bd540289cccdd67da232"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/prosie version")
  end
end
