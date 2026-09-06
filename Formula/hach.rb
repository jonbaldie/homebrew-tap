class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell (Functional Pearl)"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.0/hach_0.1.0_darwin_arm64.tar.gz"
      sha256 "2f0ffc66ff0d21cf488e9d2481db0364a991a95aa97966480c6d57e9d9878fff"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.0/hach_0.1.0_darwin_amd64.tar.gz"
      sha256 "471220a3bc3c198964e8d2b3c5a59ea3ec6a3df25bb7b776e5a8ec108dcd1ac4"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.0/hach_0.1.0_linux_amd64.tar.gz"
    sha256 "51e65f2ecf3b033ede530e822b9c89142639da4d7b8a3e3b9cb84d052e01dfd5"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/hach --version")
  end
end
