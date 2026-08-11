class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.124.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.124.0/lightdash-cli-1.124.0-macos-arm64.tar.gz"
      sha256 "805baf57c783a03ddbbda72e6f1b0c4a4531d084a5c08d6be63c931e79ba14a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.124.0/lightdash-cli-1.124.0-macos-x64.tar.gz"
      sha256 "048e11384b490290c389ecca8a9c17a9b1b58210dc13868dbefe098fa009b40c"
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
