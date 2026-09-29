class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.369.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.369.0/lightdash-cli-2.369.0-macos-arm64.tar.gz"
      sha256 "f87f4959c42818fae4281d13ced9bdabe12a0f717f4a016bc011dc1ae8df7be1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.369.0/lightdash-cli-2.369.0-macos-x64.tar.gz"
      sha256 "2639f5d83487fb454b3548dac301617be21869222c713170aff8a154756fadc4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.369.0/lightdash-cli-2.369.0-linux-x64.tar.gz"
    sha256 "e004f4e9f05ba00abe1c86edd811922e117e1782d4b571eab2cd2a6d4148e655"

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
