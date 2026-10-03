class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.14/hach_0.1.14_darwin_arm64.tar.gz"
      sha256 "2551daf19b9b545884f587fc9bd9bb819b4b562fe7afdafea9e8bc7eb6f4489f"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.14/hach_0.1.14_darwin_amd64.tar.gz"
      sha256 "0cb9cedd89519a2698b7ca68e8b625fe186dfe5e6e666071a8b47596ca29a680"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.14/hach_0.1.14_linux_amd64.tar.gz"
    sha256 "d6ff5d65d652cf6d73e8df431cee8a00da36107a4bd7b58ae9b583849a2415e0"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.14", shell_output("#{bin}/hach --version")
  end
end
