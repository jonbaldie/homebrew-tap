class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.0/prosie_0.4.0_darwin_arm64.tar.gz"
      sha256 "aae45a4cde63964d91843d388b37ded516cf7b883312b10294d8b34a00730d35"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.0/prosie_0.4.0_darwin_amd64.tar.gz"
      sha256 "7bea7a8e90019d61dae80957b6e22adce830a49e5bd205190e88c82e2325fb03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.0/prosie_0.4.0_linux_arm64.tar.gz"
      sha256 "942a6846b15dee7926036221802e4c44b592e52e0a7d1fe4c2b6ef126a9027a3"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.0/prosie_0.4.0_linux_amd64.tar.gz"
      sha256 "c55f8007eb5a347625524dd7224313358dc59223dbad24295a112bf3079d9f4f"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/prosie version")
  end
end
