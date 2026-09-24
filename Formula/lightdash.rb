class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.320.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.320.1/lightdash-cli-2.320.1-macos-arm64.tar.gz"
      sha256 "134355e76b526ecfe52ca6ba336177edadee9dea20e418e82c8aa57fc696bd59"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.320.1/lightdash-cli-2.320.1-macos-x64.tar.gz"
      sha256 "72c25bd9a60bae5c196241d21bebe46a5398de284a09ff9e09555659f9f40e57"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.320.1/lightdash-cli-2.320.1-linux-x64.tar.gz"
    sha256 "0edc0e355b8f2b8fc611838a148d9743584546260a95c4266cb53b5e69648e24"

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
