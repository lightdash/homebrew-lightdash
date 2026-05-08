class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.6/lightdash-cli-0.2903.6-macos-arm64.tar.gz"
      sha256 "00bea7ef4e8eb177840233b2db80ab37614402a8ab88b5929ae79880da60d2e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.6/lightdash-cli-0.2903.6-macos-x64.tar.gz"
      sha256 "e7cdb25cc3f3ce2c0f9d84fb852d8df24e914093de9cfe40ac234841cfbf0427"
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
