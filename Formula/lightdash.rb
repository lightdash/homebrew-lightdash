class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.240.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.240.0/lightdash-cli-2.240.0-macos-arm64.tar.gz"
      sha256 "e890d520e17658f3ed4a55855b1025b3ed94768aa76aef0670e9157e8b562201"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.240.0/lightdash-cli-2.240.0-macos-x64.tar.gz"
      sha256 "25a8d43f344ef31531f95506aa420b8f2c01067df8dbca73e571d78e0368cc83"
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
