class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.440.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.440.1/lightdash-cli-2.440.1-macos-arm64.tar.gz"
      sha256 "b21a37994557fed66cbb8849d7de4521e18396ab41adaea09c57cada96e04289"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.440.1/lightdash-cli-2.440.1-macos-x64.tar.gz"
      sha256 "982199d1af843e5e85b851cfebe4a5991f6ec499c0e3a2100af277d2cd0a137b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.440.1/lightdash-cli-2.440.1-linux-x64.tar.gz"
    sha256 "58855482892cb4a1e210585f88f8ba4256ddb67a2ef19c12a93fbbe01bf278e6"

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
