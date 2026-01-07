class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2304.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2304.2/lightdash-cli-0.2304.2-macos-arm64.tar.gz"
      sha256 "871ccc4866ff805b63f293f21add515f70aa5245644756ee1b35ab9255708079"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2304.2/lightdash-cli-0.2304.2-macos-x64.tar.gz"
      sha256 "277134199e41a10a695c9f1328a28ddb00a8536ab0211366f29cff875c9bc94c"
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
