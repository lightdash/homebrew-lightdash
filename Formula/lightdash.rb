class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2880.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2880.1/lightdash-cli-0.2880.1-macos-arm64.tar.gz"
      sha256 "85d0e974f3087805b4393e9c57c11b6f06fc0c2df5263165bdeda27fd14b0192"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2880.1/lightdash-cli-0.2880.1-macos-x64.tar.gz"
      sha256 "ced910849d619afefdcd2777c1d0e148e6052882abc85bb21518b5be338f29fb"
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
