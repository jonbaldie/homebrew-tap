class Prosie < Formula
  desc "Official command-line interface for the Prosie novel writing platform"
  homepage "https://github.com/jonbaldie/prosie-cli"
  license "MIT"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.2/prosie_0.4.2_darwin_arm64.tar.gz"
      sha256 "dbc71ec97eaa97311703d377c0c428e6e0469bbbf1e0a4e0487f90e8c697babc"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.2/prosie_0.4.2_darwin_amd64.tar.gz"
      sha256 "44c95c28c2ed724211fea67d70cc12520cb9622842cae7b989059d950ba9ae00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.2/prosie_0.4.2_linux_arm64.tar.gz"
      sha256 "100e001be499533efb67468ff3d77289c68c8663f97deb985bf3c90f864fc3e8"
    end

    on_intel do
      url "https://github.com/jonbaldie/prosie-cli/releases/download/v0.4.2/prosie_0.4.2_linux_amd64.tar.gz"
      sha256 "50367e426018d3f8f2e8372389ef58575d5e92f748e046f9b7b287851039ed4d"
    end
  end

  def install
    bin.install "prosie"
    prefix.install "LICENSE"
  end

  test do
    assert_match "0.4.2", shell_output("#{bin}/prosie version")
  end
end
