class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.482.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.482.0/lightdash-cli-2.482.0-macos-arm64.tar.gz"
      sha256 "bcc0e93cf3d51a45a964aea7099f4468a4ec988683f1dac3e7a7f9499122df71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.482.0/lightdash-cli-2.482.0-macos-x64.tar.gz"
      sha256 "99e8b0ab78da31569c05cb6c6c6bb4ec302f3593667650eeb48e9526ae9f133c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.482.0/lightdash-cli-2.482.0-linux-x64.tar.gz"
    sha256 "608b61c124b54b7c415e98679fa4bb1982b0575949d3841d5ba7f22152ce8aff"

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
