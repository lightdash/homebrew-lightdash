class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.163.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.163.2/lightdash-cli-1.163.2-macos-arm64.tar.gz"
      sha256 "411212b34e51b73ca18c59eb2c302d5e7265fe10886cb2faf316dd7eefea4822"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.163.2/lightdash-cli-1.163.2-macos-x64.tar.gz"
      sha256 "2d3d8cc264af6aec8bcb42d776fb755c2a911d5941827ad71d79764194ed30fd"
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
