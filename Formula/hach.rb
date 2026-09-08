class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.6/hach_0.1.6_darwin_arm64.tar.gz"
      sha256 "372a08fa35457371b5fb12a1b8585d9d2b6d3dde7948a0e156ec2d0f16ba7297"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.6/hach_0.1.6_darwin_amd64.tar.gz"
      sha256 "a4de64300edd869d9f9d5c071911ee73df21465a0bd2361881acf27c54c1394d"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.6/hach_0.1.6_linux_amd64.tar.gz"
    sha256 "1c507d4d6011552e728909c85e7cfb18cbc4ac40bc6709e6c466fd0867900561"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.6", shell_output("#{bin}/hach --version")
  end
end
