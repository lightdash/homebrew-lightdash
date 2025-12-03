class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2221.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.3/lightdash-cli-0.2221.3-macos-arm64.tar.gz"
      sha256 "c6bce0dbc757602066a62131f33ec8ab8f4d565ae110691350b342249b72b2a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.3/lightdash-cli-0.2221.3-macos-x64.tar.gz"
      sha256 "c0c0d60290f712c761e4a7ee0468f72257ce54f4078eeff94f0236e44ba85f87"
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
