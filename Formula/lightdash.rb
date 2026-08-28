class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.47.0/lightdash-cli-2.47.0-macos-arm64.tar.gz"
      sha256 "4f557a2a47047bbac9d2096a1255273eecdf4333569ca9d40ecc5e681fa8060a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.47.0/lightdash-cli-2.47.0-macos-x64.tar.gz"
      sha256 "120b92b335575407390dc73b54fae815aedba389ec0970226db5f3dec06138a2"
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
