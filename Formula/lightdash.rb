class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.151.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.151.1/lightdash-cli-2.151.1-macos-arm64.tar.gz"
      sha256 "88476a09fdac6890e935aef13292eadce235078285101031a5d0982e6a6a93d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.151.1/lightdash-cli-2.151.1-macos-x64.tar.gz"
      sha256 "24a373b6735bc566dd1e968f8baaa98d536daf8912f91d235d38feb0953a2510"
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
