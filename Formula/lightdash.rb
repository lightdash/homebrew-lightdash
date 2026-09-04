class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.122.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.122.0/lightdash-cli-2.122.0-macos-arm64.tar.gz"
      sha256 "4f437e7e3dcbcd4dd79422ee18871847bca496a3a70f5182752cd2c444971129"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.122.0/lightdash-cli-2.122.0-macos-x64.tar.gz"
      sha256 "5d57605aed1e14f1b710522d349d92bd4f04632bbf326732cca4d1a159728c34"
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
