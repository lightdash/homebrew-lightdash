class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.111.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.111.0/lightdash-cli-3.111.0-macos-arm64.tar.gz"
      sha256 "b77237b56b45ece3c8a0947dbd3ddb68c8a70fe3d52d7c9aeb62648117b5d3fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.111.0/lightdash-cli-3.111.0-macos-x64.tar.gz"
      sha256 "1261dbc9842a661cc34b34c2c7ab50c9bc5ca69619029ce55fbedc756a0dba52"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.111.0/lightdash-cli-3.111.0-linux-x64.tar.gz"
    sha256 "035dd25ceebfd1f5191906769fabfebf57ed029f07bd7b862cfeabd44474ded0"

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
