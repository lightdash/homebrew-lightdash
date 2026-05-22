class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3009.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.3/lightdash-cli-0.3009.3-macos-arm64.tar.gz"
      sha256 "005f50910aa3f98056472f7e760fbd45c27558f8088e1364c1486346c47184b9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.3/lightdash-cli-0.3009.3-macos-x64.tar.gz"
      sha256 "6a6f12655a83ba9eefdcb7b2dd7068f50268626d46a4067c7b38d50924ed8a75"
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
