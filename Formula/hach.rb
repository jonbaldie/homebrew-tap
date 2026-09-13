class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.9/hach_0.1.9_darwin_arm64.tar.gz"
      sha256 "465ac68797d44264c8150cd065cdccf8b750cc7ea1e2054f906a89e161b4be88"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.9/hach_0.1.9_darwin_amd64.tar.gz"
      sha256 "58398170a00dac429e8d1cb74e1dc9973528814c2e0b25b504e2ba89ba7e9329"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.9/hach_0.1.9_linux_amd64.tar.gz"
    sha256 "0aa8139e5955e6f957b77b7b7594b07c494fb0087a3d248c154aebfdb3c86d1b"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.9", shell_output("#{bin}/hach --version")
  end
end
