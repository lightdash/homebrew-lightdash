class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.52.0/lightdash-cli-1.52.0-macos-arm64.tar.gz"
      sha256 "b0f85fa918ff1db5170ff46ca4596d4d826885a004ea9099851cb0e7df07e723"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.52.0/lightdash-cli-1.52.0-macos-x64.tar.gz"
      sha256 "8598ad0c3befb3a92b510e3acac4e8fd3de992013deb8cd0b221e7fb408624c5"
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
