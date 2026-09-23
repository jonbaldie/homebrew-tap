class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.10/hach_0.1.10_darwin_arm64.tar.gz"
      sha256 "0f60236117da275e630644e46ca22515e00f2e1f6ed042f45a21f1a0c5d38640"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.10/hach_0.1.10_darwin_amd64.tar.gz"
      sha256 "60651fffbf922670af719de6b14e273603452d164f36ce281d0bad8b735e4776"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.10/hach_0.1.10_linux_amd64.tar.gz"
    sha256 "5b5de41afd9d78fc8fbfb4eb4f1f6698afcfc8218ac250c13cddf24f6ea3bafd"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.10", shell_output("#{bin}/hach --version")
  end
end
