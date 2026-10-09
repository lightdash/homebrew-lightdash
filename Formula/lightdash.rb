class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.497.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.497.0/lightdash-cli-2.497.0-macos-arm64.tar.gz"
      sha256 "18da3a9061d75b2a68a1fde9b5ee8daa8af4f91be7088ed430fd37957ada44bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.497.0/lightdash-cli-2.497.0-macos-x64.tar.gz"
      sha256 "7ea02ae5e9a90cc20cae9d5ef1f1501d3548cabb3c597108b023a633f0906483"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.497.0/lightdash-cli-2.497.0-linux-x64.tar.gz"
    sha256 "11ecb3e7853f5a6aa97a04ad99bec1060eababf7e2a267382562a2dc20950b7c"

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
