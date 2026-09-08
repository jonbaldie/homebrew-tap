class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.5/hach_0.1.5_darwin_arm64.tar.gz"
      sha256 "7fc1f4b83051b75a5085a51e13d604005bd5da45965ad9641091d3395292c8b2"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.5/hach_0.1.5_darwin_amd64.tar.gz"
      sha256 "1c1f4b1150bdede0476c12f1484c1ea03308be4b0f1faed878fc7d1f5e5c06c4"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.5/hach_0.1.5_linux_amd64.tar.gz"
    sha256 "9c54e62268624c19db409baf5de7be5ab00dbf97e5d695f2c64220804d1a3fd4"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.5", shell_output("#{bin}/hach --version")
  end
end
