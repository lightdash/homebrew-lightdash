class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.135.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.135.0/lightdash-cli-1.135.0-macos-arm64.tar.gz"
      sha256 "5a699dec23f61dbddbbf03d034169e0d2bd743416a28036fa84658a31d928c7a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.135.0/lightdash-cli-1.135.0-macos-x64.tar.gz"
      sha256 "47b3b6e4ac148ece46d78cd5bcb5c83c0b33bcf7abb42ca63a1e46a7d4842635"
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
