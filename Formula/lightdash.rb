class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.348.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.348.1/lightdash-cli-3.348.1-macos-arm64.tar.gz"
      sha256 "95af9e6a88ab8c8d66d35fd25608fd3187b9fe8d35fde35bb1eed8e0173bcbb9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.348.1/lightdash-cli-3.348.1-macos-x64.tar.gz"
      sha256 "2830c6b1ba1af91ddae0065b8d39027e7dfaa7d2840f3cacf66c5aaa8691901d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.348.1/lightdash-cli-3.348.1-linux-x64.tar.gz"
    sha256 "c3d730a83d7f7ef3ddb16058f56964f763957830c44569eb655909aa40484360"

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
