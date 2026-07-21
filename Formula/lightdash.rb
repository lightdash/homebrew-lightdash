class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3437.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3437.0/lightdash-cli-0.3437.0-macos-arm64.tar.gz"
      sha256 "c454ea20dcf5ccaf53f1ac71e578eed7eb573c8d353ef79986f900eafbdc5791"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3437.0/lightdash-cli-0.3437.0-macos-x64.tar.gz"
      sha256 "3b068942876c529c9fec79eda30de9669260cc410a5364a60af74844f291ec31"
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
