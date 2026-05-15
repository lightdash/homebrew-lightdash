class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2953.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2953.0/lightdash-cli-0.2953.0-macos-arm64.tar.gz"
      sha256 "907aaef7151e0034bc45000ed3f04294c46ce09dd8ce771eca3726654084fd81"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2953.0/lightdash-cli-0.2953.0-macos-x64.tar.gz"
      sha256 "a4c0db42f1521e92dd90462bee73042a19e80fc156437bd6bd53c5dbcd1b9d76"
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
