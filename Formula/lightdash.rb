class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.265.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.265.0/lightdash-cli-2.265.0-macos-arm64.tar.gz"
      sha256 "cd8176131961c01e9f228b542553af2d69ca47c8ee018b84d7588c2600b82252"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.265.0/lightdash-cli-2.265.0-macos-x64.tar.gz"
      sha256 "352eeed42f23021424434c769c4369cbdf3acb950e2f946c903eb4411a0181a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.265.0/lightdash-cli-2.265.0-linux-x64.tar.gz"
      sha256 "fbc78786f39b16166b4b9f5f073c6ea0dcdcb1f593f949bc1d22e95f5c24f639"
    end
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
