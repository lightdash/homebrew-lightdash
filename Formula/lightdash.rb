class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3129.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3129.0/lightdash-cli-0.3129.0-macos-arm64.tar.gz"
      sha256 "4e086766ac366f9e02b63fb496675b73b3021b6623399a504afc08d53cb9ece7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3129.0/lightdash-cli-0.3129.0-macos-x64.tar.gz"
      sha256 "46ed35af8ee569097af4541bc1ac5192954b28b8ae6210c9920aaf2c4ec861ff"
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
