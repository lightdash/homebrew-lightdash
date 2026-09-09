class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.178.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.178.0/lightdash-cli-2.178.0-macos-arm64.tar.gz"
      sha256 "07d63a3da6de2cbf3dd7d6619456aaf8933d3d0659435a644da5f9a42cc8db50"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.178.0/lightdash-cli-2.178.0-macos-x64.tar.gz"
      sha256 "1c161e2890fc62a55ccb94f2f38b6f017e4c9181b3c35d9de028963dbad4017f"
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
