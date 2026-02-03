class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2411.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2411.1/lightdash-cli-0.2411.1-macos-arm64.tar.gz"
      sha256 "370ac59aac8ebfcf16e870e483d9883bb768bf2e35a27893831cfdb0107ba40e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2411.1/lightdash-cli-0.2411.1-macos-x64.tar.gz"
      sha256 "8ddf8d7b8085ba6e983a899ca24a3a675e9abdfe759bb0e93f06e31dbcf61aac"
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
