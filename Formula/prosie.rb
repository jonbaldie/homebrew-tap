class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.1/prosie_0.1.1_darwin_arm64.tar.gz"
      sha256 "02d86734120711abb15f6253470e9359aa47d284cfff2285dfaa8b869c2ee6a3"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.1/prosie_0.1.1_darwin_amd64.tar.gz"
      sha256 "66de422ce4872e4681c333b53858b667cdc79a60f276f81afb49ce9a242db6af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.1/prosie_0.1.1_linux_arm64.tar.gz"
      sha256 "f8107919ba6625a72885bbe065cee9a49e54ba0f047341d980851a63c3a085aa"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.1.1/prosie_0.1.1_linux_amd64.tar.gz"
      sha256 "ca50525615c6dc4debafaa0692e4d809266fe76f386cded5971c254b1a9a16cd"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/prosie version")
  end
end
