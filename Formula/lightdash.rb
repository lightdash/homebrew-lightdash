class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.106.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.106.0/lightdash-cli-2.106.0-macos-arm64.tar.gz"
      sha256 "75545c0196516f524da82dede43c567f2e61e18b86d59663dfcd6296fd903ccb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.106.0/lightdash-cli-2.106.0-macos-x64.tar.gz"
      sha256 "ca64d074ae15abfcaa950dc73634c041f390d9bb3bb8db77c085743a0d120000"
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
