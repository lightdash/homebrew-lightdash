class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2348.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2348.2/lightdash-cli-0.2348.2-macos-arm64.tar.gz"
      sha256 "c1d1e6b6a309bf8c8ee61cdc5298069ba8cd3deed56da43bba8cf43baac18971"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2348.2/lightdash-cli-0.2348.2-macos-x64.tar.gz"
      sha256 "e8d4feb9b8f0d44bed3edf38e4963351c0ad0e4510f57587788d8660a51c2100"
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
