class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.457.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.457.3/lightdash-cli-2.457.3-macos-arm64.tar.gz"
      sha256 "f159d6a17974eb4bfc8fad83d5293832d8be954ce01ecfa7dd88bbbf83d4eb60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.457.3/lightdash-cli-2.457.3-macos-x64.tar.gz"
      sha256 "953bd2c7414eb6da850608355056d6ab3726238d5be221b309b92e8089594f92"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.457.3/lightdash-cli-2.457.3-linux-x64.tar.gz"
    sha256 "0971cdba187816a57b8074cf3e8884e07c6e5dd094ec5da4d1bcadaa712759f1"

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
