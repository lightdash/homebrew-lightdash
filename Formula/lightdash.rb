class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2688.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2688.0/lightdash-cli-0.2688.0-macos-arm64.tar.gz"
      sha256 "3b41b7889f5c730d19adf2e870e76ba2829c47bc78e78be79aeb1896186f3040"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2688.0/lightdash-cli-0.2688.0-macos-x64.tar.gz"
      sha256 "1b1b9b5cc4afa65e7fc286c3fb5daa39699582910ccba7e15d5a87a4806c5677"
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
