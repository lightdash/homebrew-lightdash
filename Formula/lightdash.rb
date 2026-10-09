class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.499.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.499.0/lightdash-cli-2.499.0-macos-arm64.tar.gz"
      sha256 "d8230c632b278081607b19a8f38234062aa82fde34662f4579a77f5bb7943c48"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.499.0/lightdash-cli-2.499.0-macos-x64.tar.gz"
      sha256 "c4ba8ca0c1e97f752fbf4de7c51a53b4231f01e661e0fd58fcd06940e20fcf6a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.499.0/lightdash-cli-2.499.0-linux-x64.tar.gz"
    sha256 "e1b6b58cec3584fc988544c1f04198bbe1581d332fedacbee8fee8ef1095748f"

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
