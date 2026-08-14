class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.157.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.6/lightdash-cli-1.157.6-macos-arm64.tar.gz"
      sha256 "47232708e5b9ae102db191bba14ed6823e60b31c6d26ecfccc7768c4e929f6a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.6/lightdash-cli-1.157.6-macos-x64.tar.gz"
      sha256 "96d4d3855f8eb9a4c91d1a23a5015a93bf5491ac5eb5809887d440d1db66b823"
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
