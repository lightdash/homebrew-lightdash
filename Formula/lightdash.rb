class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.622.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.622.2/lightdash-cli-2.622.2-macos-arm64.tar.gz"
      sha256 "8104d5248300002b904c8174b72e30d4a9f7e1b894b10ca5dc55749603946979"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.622.2/lightdash-cli-2.622.2-macos-x64.tar.gz"
      sha256 "3800d336f04ecae8ba06bc66270efeb9be6aa4a57b9c60b8ad4d0d4320f193f1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.622.2/lightdash-cli-2.622.2-linux-x64.tar.gz"
    sha256 "09bd588454fe2bcaf6d25e94379a353db403feaae6b702365c8f17fe629345e9"

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
