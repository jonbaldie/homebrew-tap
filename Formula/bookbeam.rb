class Bookbeam < Formula
  desc "Official command-line interface for the BookBeam book distribution platform"
  homepage "https://github.com/jonbaldie/bookbeam-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.14/bookbeam-darwin-arm64.tar.gz"
      sha256 "814bee4b396b4cd89c0bdc55caa6c2e88bc7788b525ae29057bc3f6e0851e78d"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.14/bookbeam-darwin-amd64.tar.gz"
      sha256 "db6cfc42e57341d159da5f1813e9fd620df9ec0f65c5cf2557f88fd84275c4fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.14/bookbeam-linux-arm64.tar.gz"
      sha256 "1a26e97d7e172314323453216078537ee098ceca393bf773044b02cdc2ba6c18"
    end

    on_intel do
      url "https://github.com/jonbaldie/bookbeam-cli/releases/download/v0.1.14/bookbeam-linux-amd64.tar.gz"
      sha256 "d5e3c90c1679fc2830bd206e47ff3643256ac2a2218d5cb885857e5ac9c365cf"
    end
  end

  def install
    bin.install Dir["bookbeam-*"].first => "bookbeam"
  end

  test do
    assert_match "Manage book projects in your catalog", shell_output("#{bin}/bookbeam projects --help")
    assert_match "Authenticate with BookBeam", shell_output("#{bin}/bookbeam auth login --help")
  end
end
