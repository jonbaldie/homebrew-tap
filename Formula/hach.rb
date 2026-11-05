class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.17/hach_0.1.17_darwin_arm64.tar.gz"
      sha256 "94403b9c70bbc8003b8e19770956d0cd549fce5e2c075c4c8ccba58d8be795e1"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.17/hach_0.1.17_darwin_amd64.tar.gz"
      sha256 "eb88c843edbac6f5541eb8dc82e23c99ecf2943aaef2335fb82e836e33796b8e"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.17/hach_0.1.17_linux_amd64.tar.gz"
    sha256 "06018fb5c603575e1080f2b17550c07c773dfd9f93b1807a8efe4bfaeb073812"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.17", shell_output("#{bin}/hach --version")
  end
end
