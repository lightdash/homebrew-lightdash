class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.541.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.541.0/lightdash-cli-2.541.0-macos-arm64.tar.gz"
      sha256 "0ec8d4a36cd551fe3eca82e6608752be31be6be89fa82b8faca82e9233a1ecdb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.541.0/lightdash-cli-2.541.0-macos-x64.tar.gz"
      sha256 "f16383d889f53da2ae27aada8325168caec8e0877fa6f8ad285ef00c4ad8fefb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.541.0/lightdash-cli-2.541.0-linux-x64.tar.gz"
    sha256 "55facbe45968fd76a54a83f909732c723571a2c863191c88ec1fcfa198a9138f"

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
