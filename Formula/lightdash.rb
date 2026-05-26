class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3019.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3019.0/lightdash-cli-0.3019.0-macos-arm64.tar.gz"
      sha256 "1cffe25d43275db9f57fd962240145019421a2be43b10bde52527ef492e30ef2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3019.0/lightdash-cli-0.3019.0-macos-x64.tar.gz"
      sha256 "dbf8919eb3d4dd986881c68fa04422707fc1a5e5a8e6f7c25b8f73a02af2bbc2"
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
