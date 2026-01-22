class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2370.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2370.0/lightdash-cli-0.2370.0-macos-arm64.tar.gz"
      sha256 "04a52f5998eb6486c224bed0adc27a67f2ed450f2b5b757467be7cb44d9b7ca3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2370.0/lightdash-cli-0.2370.0-macos-x64.tar.gz"
      sha256 "869de482410afb9e8dc13cc48d6804333d9176b9f625448b0821291d66d63ac6"
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
