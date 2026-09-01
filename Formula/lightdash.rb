class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.82.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.82.0/lightdash-cli-2.82.0-macos-arm64.tar.gz"
      sha256 "ffa356955cdbdc51341f72ae889e65e7deba04b59a90e68346af249c3f1c418d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.82.0/lightdash-cli-2.82.0-macos-x64.tar.gz"
      sha256 "20b69906cd4d7cffa25cb0595eea58024fad1119a50fec324a6b7de45c94279b"
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
