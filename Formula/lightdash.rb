class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2275.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2275.1/lightdash-cli-0.2275.1-macos-arm64.tar.gz"
      sha256 "a43d751e2cec9cd69281b5ffc92a0ba603bb592119a75f321c4a437b3a82e67d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2275.1/lightdash-cli-0.2275.1-macos-x64.tar.gz"
      sha256 "e5a01bbe5f844983b237c208bb4ed4da2690f4d87780ec80ae5d6e56acfbfad1"
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
