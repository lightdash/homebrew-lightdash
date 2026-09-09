class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.182.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.182.1/lightdash-cli-2.182.1-macos-arm64.tar.gz"
      sha256 "4e3e338137d72bec30bd63d8f39dd923b871a8da2fcc596836b5fa9fede523f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.182.1/lightdash-cli-2.182.1-macos-x64.tar.gz"
      sha256 "bf2787619b2a0309a9190134cfeabc5da307c643153dd7d4d88ae339e8829fda"
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
