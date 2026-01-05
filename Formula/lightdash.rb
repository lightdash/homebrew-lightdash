class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2293.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2293.0/lightdash-cli-0.2293.0-macos-arm64.tar.gz"
      sha256 "f1e46893637c5d2ccdd3c61c1d827a0aab9f0fdcf5757c7a209a353206259f9f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2293.0/lightdash-cli-0.2293.0-macos-x64.tar.gz"
      sha256 "4ed2ead4b1bb090e834a6e81474969e1af6338b30cfd47d7697a56ac95fd05db"
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
