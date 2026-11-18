class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.307.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.307.0/lightdash-cli-3.307.0-macos-arm64.tar.gz"
      sha256 "da7799f3a79055c7c1a59f3c465323727be3b1c083f453c596e135ca032c7ddd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.307.0/lightdash-cli-3.307.0-macos-x64.tar.gz"
      sha256 "48d756f92fdb07601bd1456441523c52f5c01b2593b4a9a987dc134aa5f4bc5e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.307.0/lightdash-cli-3.307.0-linux-x64.tar.gz"
    sha256 "27248bf5ecaed5192c27c5a3f1276b03dfc7f035b396dfb674aef107d8b75543"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
