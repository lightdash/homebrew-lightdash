class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.411.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.7/lightdash-cli-3.411.7-macos-arm64.tar.gz"
      sha256 "f154e8597e1b4e6ac7122ebcbe892ef9dee1f5c659b932d7b5e46fb83d1f68ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.7/lightdash-cli-3.411.7-macos-x64.tar.gz"
      sha256 "c015991cda7b2c796f2e1e106294196a595f5ef1da69a23fb668f3e4eee7dd5e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.411.7/lightdash-cli-3.411.7-linux-x64.tar.gz"
    sha256 "f3a9bc959f3bd7b4ff84598cfccfdb00d4402fd6a110501e447b95abbb211ad4"

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
