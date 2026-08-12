class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.134.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.134.3/lightdash-cli-1.134.3-macos-arm64.tar.gz"
      sha256 "13952517ab7e0bf3284a6dddf76d1330e22d971f4c7479ae5c9b43ca1d111d39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.134.3/lightdash-cli-1.134.3-macos-x64.tar.gz"
      sha256 "94f5bf77bd725cff509acaafb4bc505b6d5b94f010018a64eba4e61da7ad3f7d"
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
