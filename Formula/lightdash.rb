class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3367.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3367.0/lightdash-cli-0.3367.0-macos-arm64.tar.gz"
      sha256 "916932fe1d9b4811195335f7b56195dc894b092333986a531b8ac71d6728fe3c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3367.0/lightdash-cli-0.3367.0-macos-x64.tar.gz"
      sha256 "46769b234d3c5e95f932ff16b4c02348eda9f48e211c45ec352d95d8c9a7afb8"
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
