class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.418.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.418.1/lightdash-cli-3.418.1-macos-arm64.tar.gz"
      sha256 "3b934577e6d25e01576d8d527bdc01604a68cf2bca2b8eb2a557623a8fc3eb25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.418.1/lightdash-cli-3.418.1-macos-x64.tar.gz"
      sha256 "20ed1a995d3f6b050549b5d46c8cc98af749c22e295bd14ecf16eb72e097ea84"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.418.1/lightdash-cli-3.418.1-linux-x64.tar.gz"
    sha256 "07aa910d5b78fb9307127f741764bcdaaa14ff4be98467612fa9e379e63386a7"

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
