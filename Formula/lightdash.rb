class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3176.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3176.0/lightdash-cli-0.3176.0-macos-arm64.tar.gz"
      sha256 "221b3cf3bd82fe8ec8fd6151f6b44405eb648cd3ab4e44a6f7249b5ddb430909"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3176.0/lightdash-cli-0.3176.0-macos-x64.tar.gz"
      sha256 "55273289794c84e2e8c8fd86010e28ee6d3ab27a7b0b40fdc320a939c5d14140"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
