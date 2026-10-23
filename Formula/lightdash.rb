class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.42.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.42.1/lightdash-cli-3.42.1-macos-arm64.tar.gz"
      sha256 "1ea235d7042cedd96c869ef561fb59a8c9b622cb4015345c01587e65f7f4c456"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.42.1/lightdash-cli-3.42.1-macos-x64.tar.gz"
      sha256 "66ecb5f4d305e1bac1a3d8279471c16fe66d5821e8331207539e0cd9be502e18"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.42.1/lightdash-cli-3.42.1-linux-x64.tar.gz"
    sha256 "89cafcd7e77d1b683870c816f3c42f90e713733bd4cb1ae55e81f5c7a9d1f626"

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
