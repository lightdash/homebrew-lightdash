class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2947.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2947.0/lightdash-cli-0.2947.0-macos-arm64.tar.gz"
      sha256 "c4442f24c02a521a9c517cf2982a7fcd758129af242c26a3c02dfabb326767a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2947.0/lightdash-cli-0.2947.0-macos-x64.tar.gz"
      sha256 "203f902c21fa38d33ca3fd3461a984e318886b6a9ab5cf12e0575cc8c19e8245"
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
