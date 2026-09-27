class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.12/hach_0.1.12_darwin_arm64.tar.gz"
      sha256 "91af40d8cd11063f407c86c396e3a5fc227f1dc38e94e717b2317205de9f876d"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.12/hach_0.1.12_darwin_amd64.tar.gz"
      sha256 "78a21b6fa8a9939431339b482a036cf886a6578c4ec9a48b528b94c473f61427"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.12/hach_0.1.12_linux_amd64.tar.gz"
    sha256 "446d4b1b68976635266c5a957093703db656242e0a72e4569b16d83f917a24e3"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.12", shell_output("#{bin}/hach --version")
  end
end
