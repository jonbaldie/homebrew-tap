class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.7/hach_0.1.7_darwin_arm64.tar.gz"
      sha256 "c02ba284a141ab3e32003e87dfb57300a47c61be3a717fe5d99bb6c4da5b07f1"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.7/hach_0.1.7_darwin_amd64.tar.gz"
      sha256 "f776b91c083e832d4c71b26546ef58f85e213daabbc529cad49ccefdb034b411"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.7/hach_0.1.7_linux_amd64.tar.gz"
    sha256 "63c21e2a71b2170e51ddc010d38fdc8a28cc47183a90e7670d793f321482ee08"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.7", shell_output("#{bin}/hach --version")
  end
end