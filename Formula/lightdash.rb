class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3012.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3012.0/lightdash-cli-0.3012.0-macos-arm64.tar.gz"
      sha256 "d6af703545b34ba90810842d2c315a5a1f57d6d885dcaef3bd8970515e6950e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3012.0/lightdash-cli-0.3012.0-macos-x64.tar.gz"
      sha256 "79ba9887154df284081f765ccc14257555921b250073b0c998f35eb96747a0cd"
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
