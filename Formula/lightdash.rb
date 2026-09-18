class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.267.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.267.0/lightdash-cli-2.267.0-macos-arm64.tar.gz"
      sha256 "99a7eefc3eb4d0cf990f2edf37563588f62bfc246f8bb7211c9fd32a83ddcaf6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.267.0/lightdash-cli-2.267.0-macos-x64.tar.gz"
      sha256 "91d7c1b5d269b89043cb6136f690f66ae8218368bcfd5493083a7ebcf30805a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.267.0/lightdash-cli-2.267.0-linux-x64.tar.gz"
      sha256 "0ad2901a56042204d3589e5d44103bcd9ca95d51dacb0b0c216525ef575062c8"
    end
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
