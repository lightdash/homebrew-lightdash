class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.626.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.626.0/lightdash-cli-2.626.0-macos-arm64.tar.gz"
      sha256 "e165264aea647dd48b01e3bee6b02ea68e9087d9c9ea4bf3b8596454026e5ef0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.626.0/lightdash-cli-2.626.0-macos-x64.tar.gz"
      sha256 "1069934522f9108f1b9fa8ff63331c5e5a84523cf777341228b82ec04b903d80"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.626.0/lightdash-cli-2.626.0-linux-x64.tar.gz"
    sha256 "f543262fed623562814edc725699ef58e4c09c5c8e574c98442c09cded28c224"

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
