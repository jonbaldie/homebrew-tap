class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version "0.7.0"
  version_scheme 2

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.7.0/prosie_0.7.0_darwin_arm64.tar.gz"
      sha256 "57b5db994b6dc4ddbb3e6d7ed25f486528d66f7f7ca732008a2f57e3ad965ab2"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.7.0/prosie_0.7.0_darwin_amd64.tar.gz"
      sha256 "79383473d2e74b058c067b090a5dbb4cdda2a7aae740fba7daf495d49d1b9252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.7.0/prosie_0.7.0_linux_arm64.tar.gz"
      sha256 "2f8b02d8d29f1682b0043df1b430bfc6e9b0eb9b50655bdfa6dbcb2f1e343c15"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.7.0/prosie_0.7.0_linux_amd64.tar.gz"
      sha256 "2a1bd43f3ee9bb70d5f33f2cf06b84d3ed24640b5a277e2ecb11edd202f78a18"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/prosie version")
  end
end
