class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3282.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3282.0/lightdash-cli-0.3282.0-macos-arm64.tar.gz"
      sha256 "9314a153888409079959206cad8ffd304946acebea0e3c1e20be5d8b1fc92f86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3282.0/lightdash-cli-0.3282.0-macos-x64.tar.gz"
      sha256 "82c522219d07571bda8e4681436fec8435b3877d1155acce77ff78336251a3e1"
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
