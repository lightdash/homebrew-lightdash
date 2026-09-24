class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.319.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.6/lightdash-cli-2.319.6-macos-arm64.tar.gz"
      sha256 "731bd7f914b89a9ef4a3a1678394c0165a566061d361d32a0f50a3860fca87c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.6/lightdash-cli-2.319.6-macos-x64.tar.gz"
      sha256 "e307397b404c335a369dc6962fe0f9c506e3c5000ad36d91a529fbf28b97feac"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.319.6/lightdash-cli-2.319.6-linux-x64.tar.gz"
    sha256 "51f8ff8b883039af98c076ec1e6589b539efe68e2dfb8aee2a28df5f06006d29"

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
