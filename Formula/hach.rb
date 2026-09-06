class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell (Functional Pearl)"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.0/hach_0.1.0_darwin_arm64.tar.gz"
      sha256 "24a89a94143f970b80007bda7acbf1c6eee57d9048268838741e23a700a8693d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.0/hach_0.1.0_linux_amd64.tar.gz"
      sha256 "51e65f2ecf3b033ede530e822b9c89142639da4d7b8a3e3b9cb84d052e01dfd5"
    end
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/hach --version")
  end
end
