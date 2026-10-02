class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.5/lightdash-cli-2.415.5-macos-arm64.tar.gz"
      sha256 "52003e5f9f5ecc347aebcef4ee7633e8aecd816df6cec742a37713761a1022f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.5/lightdash-cli-2.415.5-macos-x64.tar.gz"
      sha256 "f7e4979108675001ebc3fe776410a1ff4f3afae28d29b75183eeef1d6dcb2835"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.5/lightdash-cli-2.415.5-linux-x64.tar.gz"
    sha256 "96f01254eaab1098cca76f6ebd48c689c2562d627d04864ff9fbe555da66861a"

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
