class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.256.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.256.2/lightdash-cli-2.256.2-macos-arm64.tar.gz"
      sha256 "52aebf467aecc524090385d6f3b2f0548e74c999b42b90012f70be3ac0406621"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.256.2/lightdash-cli-2.256.2-macos-x64.tar.gz"
      sha256 "20c4ba7c3290f99cbf052474da401e2f2309fe5e9659e7771c808561691efdc8"
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
