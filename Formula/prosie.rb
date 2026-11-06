class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version "0.8.0"
  version_scheme 2

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.8.0/prosie_0.8.0_darwin_arm64.tar.gz"
      sha256 "6a7de8064d90fba645bf6f407a7bac1122d7805f26f8e2731048c9dea6c02ef2"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.8.0/prosie_0.8.0_darwin_amd64.tar.gz"
      sha256 "9a1cf0136296ee6d237bc99b2e8055b59e2c1be31f34bf0dd66a93e659fc7064"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.8.0/prosie_0.8.0_linux_arm64.tar.gz"
      sha256 "76b9c3b769a5f5cfd312f02e4e52b24b3a5ecb47c4c4e0b94fc909f3b3c8565d"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.8.0/prosie_0.8.0_linux_amd64.tar.gz"
      sha256 "b2b4db98cea5cabb3034823a2306c88fa469cb50d21ac10c961b3079df97a9ec"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/prosie version")
  end
end
