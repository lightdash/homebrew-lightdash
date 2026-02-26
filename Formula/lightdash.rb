class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2529.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2529.0/lightdash-cli-0.2529.0-macos-arm64.tar.gz"
      sha256 "b1deb906e1377651432ab287c2cc2db1e800497ea09adde3fb502a7cf0d61316"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2529.0/lightdash-cli-0.2529.0-macos-x64.tar.gz"
      sha256 "c8b83f3f321f6addadce72777bfcb4006ec7a03c09ca446e961ce3f68ebad954"
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
