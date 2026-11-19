class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.332.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.332.0/lightdash-cli-3.332.0-macos-arm64.tar.gz"
      sha256 "bfb86ef55ccff213c9afa185b3c711ba92d4bf123a9793d8384c419015ac861e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.332.0/lightdash-cli-3.332.0-macos-x64.tar.gz"
      sha256 "ca88f411c8907607679249e820a006a016e9f403f7ab4a74e5ea89727e3bbfd6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.332.0/lightdash-cli-3.332.0-linux-x64.tar.gz"
    sha256 "dec6904b5f843318f9134fbc5208a7acee6b3a55d7a7ad3175edc574fdcabd26"

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
