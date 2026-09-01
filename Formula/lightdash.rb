class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.76.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.76.0/lightdash-cli-2.76.0-macos-arm64.tar.gz"
      sha256 "52280dd71afd8ca717aecf815eb6c81bacfcf0f2886c8ae9d2a37da632e63ab5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.76.0/lightdash-cli-2.76.0-macos-x64.tar.gz"
      sha256 "ac5532f9a689fa1613e8af3db07c37f26dd3d9273dbca3c0eaf14978de60ae07"
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
