class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.200.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.200.0/lightdash-cli-2.200.0-macos-arm64.tar.gz"
      sha256 "73be884c60f1532bd1e710a65219af479cb58d49e1ff0012e03dd20021386344"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.200.0/lightdash-cli-2.200.0-macos-x64.tar.gz"
      sha256 "c9840f4839f382c229f09be8cb5ff5ca1791a7537053365206f20e6d09f2df03"
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
