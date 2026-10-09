class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.527.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.527.1/lightdash-cli-2.527.1-macos-arm64.tar.gz"
      sha256 "d4e3048cf14e7a70cf5af00d64e366284170c2e3dac5336370e43868e418a1f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.527.1/lightdash-cli-2.527.1-macos-x64.tar.gz"
      sha256 "f85e6eb0e46b87a1db9c4d55b5aed4f886666fa631f85e8ed8ec39691c83c955"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.527.1/lightdash-cli-2.527.1-linux-x64.tar.gz"
    sha256 "c19f17ae8524e2f6bafbf898ad7a0b456392fb8583798ac6eb473ca4e8fddb75"

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
