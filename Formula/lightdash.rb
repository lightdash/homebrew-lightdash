class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.347.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.347.1/lightdash-cli-2.347.1-macos-arm64.tar.gz"
      sha256 "802a05da15c7f5abf3805f078c2a410ea6ef45070eb7e6e5a7c59123c2b6d6d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.347.1/lightdash-cli-2.347.1-macos-x64.tar.gz"
      sha256 "d975a6517a7949cda41712c209a9de31622b4e3a2cb75117724e88572c76d366"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.347.1/lightdash-cli-2.347.1-linux-x64.tar.gz"
    sha256 "4b01d5395aa1431298ed5d209cad9c5a62cbf2e61cbe3cf52469a97d4152423d"

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
