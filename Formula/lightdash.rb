class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.0/lightdash-cli-3.21.0-macos-arm64.tar.gz"
      sha256 "10c777f6a5f074562d31a9ff3b618f23c9b241bad9db905718c233d2427596d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.0/lightdash-cli-3.21.0-macos-x64.tar.gz"
      sha256 "49d8dcd424f7a3ad1f8a8f498ac837057ded84f4428e83e8bb1a24e1e6667a59"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.21.0/lightdash-cli-3.21.0-linux-x64.tar.gz"
    sha256 "3f834a51d00feb93814858d307a6be23a752f75861de47cae490e9c961050722"

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
