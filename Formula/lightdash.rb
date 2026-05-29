class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3052.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3052.2/lightdash-cli-0.3052.2-macos-arm64.tar.gz"
      sha256 "dcd6fa2f89303ccc3feedb305780cbcadfd4bdf8e6acf557dde5b814f2abdf42"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3052.2/lightdash-cli-0.3052.2-macos-x64.tar.gz"
      sha256 "ef54aa86c914b5c29c8330f9bff297457d04739236d7378c02e35a1d2ca585b7"
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
