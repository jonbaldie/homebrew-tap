class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version "0.6.0"
  version_scheme 2

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.6.0/prosie_0.6.0_darwin_arm64.tar.gz"
      sha256 "30de6532c992d6538ed85dc7ae084a56a0dd66bf064341dfa80382ba57bfaf1a"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.6.0/prosie_0.6.0_darwin_amd64.tar.gz"
      sha256 "93dd0591af225af4281c6fa18f95155914425b82eaedaead0865381e39ef319a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.6.0/prosie_0.6.0_linux_arm64.tar.gz"
      sha256 "d0a3833a4f5989a6d28feb6dbf406b2858fa339854aa99ed9c1e5735b28c0cd8"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.6.0/prosie_0.6.0_linux_amd64.tar.gz"
      sha256 "3552787296d40d07f1fa12e66b19bf07001506349d941fbbd5877fc71c975a10"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/prosie version")
  end
end
