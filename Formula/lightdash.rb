class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.47.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.47.1/lightdash-cli-3.47.1-macos-arm64.tar.gz"
      sha256 "82afe083dd10bc40c9b5612243be1eaee8a03405e6f9d104625b89190ea3a38c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.47.1/lightdash-cli-3.47.1-macos-x64.tar.gz"
      sha256 "58a211d9409e271d0c9f3a80eff36bc5bb32cc98be88cd45cb5a25b434a42aa8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.47.1/lightdash-cli-3.47.1-linux-x64.tar.gz"
    sha256 "dadd8eee14430124b36a712e431cdca56721b1b134686b17875e6965869567e4"

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
