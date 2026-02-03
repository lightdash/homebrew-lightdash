class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2411.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2411.0/lightdash-cli-0.2411.0-macos-arm64.tar.gz"
      sha256 "c20290014415e56a8d034dad6e51b9a5a4a1183e61730c9effd79f49f23e50fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2411.0/lightdash-cli-0.2411.0-macos-x64.tar.gz"
      sha256 "ef9d206437b691662ca2e0f952f9f86093d0e11df64c9e7517748f229c5e8ec5"
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
