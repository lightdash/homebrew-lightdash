class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2303.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2303.0/lightdash-cli-0.2303.0-macos-arm64.tar.gz"
      sha256 "a62651d537150f5e21d13e636a73133fe0121c0e4a123de4b4bd813d77ea5e71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2303.0/lightdash-cli-0.2303.0-macos-x64.tar.gz"
      sha256 "42eefebbede5d728169dbbd17b60ae2d2b07d92c4fd4764060e73c4d526a5812"
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
