class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.15/hach_0.1.15_darwin_arm64.tar.gz"
      sha256 "5f09c86faa92871add9266602ddd5ef26c89d85707a9769bb405c668fe2b4751"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.15/hach_0.1.15_darwin_amd64.tar.gz"
      sha256 "1a38be3b577e15810781f840bd610be0214de45df5d5cd57f14c1bf54fcfab91"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.15/hach_0.1.15_linux_amd64.tar.gz"
    sha256 "98b170f9fa30c2a73374b592be901b9d82fbcc1955edd8f58427a2f3126cf032"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.15", shell_output("#{bin}/hach --version")
  end
end
