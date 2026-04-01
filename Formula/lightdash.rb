class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.4/lightdash-cli-0.2709.4-macos-arm64.tar.gz"
      sha256 "f0ad4d0cee14b18310624b8d6ad50364fdce4420b5b330a301c631f303b3d268"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.4/lightdash-cli-0.2709.4-macos-x64.tar.gz"
      sha256 "66d32767e29fcd223e7202a8620c465a1376c269d48be934fb5180399b2d2071"
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
