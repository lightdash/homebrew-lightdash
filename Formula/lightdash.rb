class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.457.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.457.2/lightdash-cli-2.457.2-macos-arm64.tar.gz"
      sha256 "f9fb8639aa8336f4d35b17c1fd6f16cdf513d5044a033445154f67ba77563526"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.457.2/lightdash-cli-2.457.2-macos-x64.tar.gz"
      sha256 "27db5b81945115c5edcc4107e92fecd708dac0d58dfaeadbf1b3e3e17e3443f9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.457.2/lightdash-cli-2.457.2-linux-x64.tar.gz"
    sha256 "ce998c21e31505a6b313f56bc7f6d4548857ad1af16dcb6bb451c37bcae8bce5"

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
