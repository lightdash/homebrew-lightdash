class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.9/lightdash-cli-1.202.9-macos-arm64.tar.gz"
      sha256 "6f636fed0e3d25f2364139a45de58d7a608a6c40957141e6371d0c9ce8c6433f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.9/lightdash-cli-1.202.9-macos-x64.tar.gz"
      sha256 "93fa7e7121e9ca9f2289058ee28190a8a3423758128842363f32839f78646268"
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
