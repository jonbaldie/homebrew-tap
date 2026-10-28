class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.16/hach_0.1.16_darwin_arm64.tar.gz"
      sha256 "c95bd8022f12d6bfef0dc68f6ee19f222bfab2f9b2e694d206ee9f495df91f23"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.16/hach_0.1.16_darwin_amd64.tar.gz"
      sha256 "e76651da441b5fa3db4ecc0a6bb604d34f2b822bddafea0fa9f5b4a85f37523d"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.16/hach_0.1.16_linux_amd64.tar.gz"
    sha256 "fff153de25e4419f97a29aaa9031bbe8d5cc80adfe47f843f44b19aa2f64c528"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.16", shell_output("#{bin}/hach --version")
  end
end
