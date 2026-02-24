class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2513.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2513.0/lightdash-cli-0.2513.0-macos-arm64.tar.gz"
      sha256 "4f4512c2eceba60e8f8fe73b0398188b90dc1c95de3927dafea966db0ccda439"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2513.0/lightdash-cli-0.2513.0-macos-x64.tar.gz"
      sha256 "88e8b6aad058f4ebf3ccee82b500b61c4dd323d360f121e78579dbeddd4a4739"
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
