class Hach < Formula
  desc "Minimalist, principled agentic coding harness in Haskell"
  homepage "https://github.com/jonbaldie/hach"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.8/hach_0.1.8_darwin_arm64.tar.gz"
      sha256 "4fa1998c2919adc85ace654a6b08c98a95f93928405d6fc73e5806168f3182d9"
    end

    on_intel do
      url "https://github.com/jonbaldie/hach/releases/download/v0.1.8/hach_0.1.8_darwin_amd64.tar.gz"
      sha256 "ce7bcb9b3d35cb14f9e5719c3b0381a8c17e82151618fa91196908aa912eb5cb"
    end
  end

  on_linux do
    url "https://github.com/jonbaldie/hach/releases/download/v0.1.8/hach_0.1.8_linux_amd64.tar.gz"
    sha256 "611b5c2f26479d737fc4a1bc3b18df25a2abc210abf33c2c5fc7137be6361fe5"
  end

  def install
    bin.install "hach"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.1.8", shell_output("#{bin}/hach --version")
  end
end
