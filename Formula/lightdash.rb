class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.8/lightdash-cli-0.2764.8-macos-arm64.tar.gz"
      sha256 "be89a92e0256825c996653e28aa54e65d040679f1333a45185c19eca69b4f866"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.8/lightdash-cli-0.2764.8-macos-x64.tar.gz"
      sha256 "9f40d1551e07387440b0e4ec20be2d98d87392d5bbaadf789c24c24a61fc28a0"
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
