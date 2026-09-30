class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.13/hach_0.1.13_darwin_arm64.tar.gz"
      sha256 "977dd37945962ef81cd248c4b8dd422818957fb9fa2dd6d257b1041652c55d0f"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.13/hach_0.1.13_darwin_amd64.tar.gz"
      sha256 "e8dd38030eb9aa45f774fbb5f6b09fbebe0d166aa2e35a5c2a7004d3de6604aa"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.13/hach_0.1.13_linux_amd64.tar.gz"
    sha256 "a18a961a2d9299fbca33e4f6679952ec700aa79292123a22be084b57057baf78"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.13", shell_output("#{bin}/hach --version")
  end
end
