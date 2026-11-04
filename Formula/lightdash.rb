class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.153.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.153.0/lightdash-cli-3.153.0-macos-arm64.tar.gz"
      sha256 "7c5a0221a83bb522c4fa1a9800009b635fa2809ab0b0efd5330d19f0c808d397"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.153.0/lightdash-cli-3.153.0-macos-x64.tar.gz"
      sha256 "726a01a612de51bf36cab0d422b062a091862571f4c4ba579e256ae9573b4f20"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.153.0/lightdash-cli-3.153.0-linux-x64.tar.gz"
    sha256 "1748ccee8a79a08ff7d313aa5a74a17c8d4e6482b5596890f4c9843f7e263ca5"

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
