class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2661.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2661.1/lightdash-cli-0.2661.1-macos-arm64.tar.gz"
      sha256 "8420ebc13a4595db84e383bce6184329ffc7548a9205379bb90669d4840e45a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2661.1/lightdash-cli-0.2661.1-macos-x64.tar.gz"
      sha256 "cbfcb8963783bff27c444302c53fccf1cc671904e81ed78956300326e55e6e80"
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
