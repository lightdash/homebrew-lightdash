class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3002.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3002.3/lightdash-cli-0.3002.3-macos-arm64.tar.gz"
      sha256 "c347a8f1462a624bb623dce7cd68998e9724b49b49934683d9e173d52b1c670d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3002.3/lightdash-cli-0.3002.3-macos-x64.tar.gz"
      sha256 "d152b861d30d22fec403325d10d447cbf4f881044f634612e085e27564eb62df"
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
