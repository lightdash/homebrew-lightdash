class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2966.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2966.1/lightdash-cli-0.2966.1-macos-arm64.tar.gz"
      sha256 "259330fc6edbc860e54dd1af48302104f0ef972b3032a60d95470a90a0776817"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2966.1/lightdash-cli-0.2966.1-macos-x64.tar.gz"
      sha256 "c4dc3f929b59ae13cafe91e258f9b5719175d4bb97f352e63ed4ab46f201cf84"
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
