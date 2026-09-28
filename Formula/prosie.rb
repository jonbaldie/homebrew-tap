class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.1/prosie_0.4.1_darwin_arm64.tar.gz"
      sha256 "bcaafa7608edbc1f067c29ee964182e008b9a8ed68256cb96115532a0e8b78b1"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.1/prosie_0.4.1_darwin_amd64.tar.gz"
      sha256 "47f3e56a9c4073d98ccd26950f428bf34b28bb11ee39b387177f6f43505f906d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.1/prosie_0.4.1_linux_arm64.tar.gz"
      sha256 "69587421fd0da7141278238251f289127d0b0e447fa6ff0d52acae4cae73e8da"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.1/prosie_0.4.1_linux_amd64.tar.gz"
      sha256 "72e6ad41e3720709d43c3074380510e441a4bbf2b30ca0f575da3bfd90f0dfc9"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.4.1", shell_output("#{bin}/prosie version")
  end
end
