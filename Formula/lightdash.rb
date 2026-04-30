class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2850.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2850.0/lightdash-cli-0.2850.0-macos-arm64.tar.gz"
      sha256 "4ae0276b70f80d2dd32f4d8075646672b856877e08d673a7be464954f5758e4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2850.0/lightdash-cli-0.2850.0-macos-x64.tar.gz"
      sha256 "2e97a0d64ca5d52d91e566cf037882a164749dec4c18115bc31f40264f0c0b4b"
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
