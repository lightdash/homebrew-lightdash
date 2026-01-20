class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2355.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2355.2/lightdash-cli-0.2355.2-macos-arm64.tar.gz"
      sha256 "fcb1bbd38ad31e087401cb2bcc3f5c517f8498a428c3fb2a084f74f6d26dd5b3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2355.2/lightdash-cli-0.2355.2-macos-x64.tar.gz"
      sha256 "2752b036f9309237d238f573fb36de6b9442e8340ca63777527adc3305955a37"
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
