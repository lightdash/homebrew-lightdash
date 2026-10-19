class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.0/lightdash-cli-2.606.0-macos-arm64.tar.gz"
      sha256 "25650f2c71dc1d473c7285a244635fee1dfb91702156785efc8a21aa3cfb9fce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.0/lightdash-cli-2.606.0-macos-x64.tar.gz"
      sha256 "9290efa9586a350e9d6e1fdd02a82929455c5463888d1cd8fca00cbcf15d13e0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.0/lightdash-cli-2.606.0-linux-x64.tar.gz"
    sha256 "44e5162ddceef21445f077599794e5f424700c34313a1d476e59895993e90f76"

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
