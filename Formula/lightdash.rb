class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2907.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2907.1/lightdash-cli-0.2907.1-macos-arm64.tar.gz"
      sha256 "3971f7bcb2d0d2939e7dada47126066faf6d8473a8a47a486e1f18dc09a28765"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2907.1/lightdash-cli-0.2907.1-macos-x64.tar.gz"
      sha256 "35d07fd6a7da9c04d17dc7805da9979e0a6e3637cce94a5a373de8804418a242"
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
