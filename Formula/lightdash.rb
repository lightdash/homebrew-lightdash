class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2994.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2994.1/lightdash-cli-0.2994.1-macos-arm64.tar.gz"
      sha256 "bc3c68dd757301fdc1830dd85293f5a5ab8f07ba05c450de17c99e721d2a1c56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2994.1/lightdash-cli-0.2994.1-macos-x64.tar.gz"
      sha256 "dbfcde897fed6610d8a6129d4b26b8e1356754f10cd1479ca6eac61cbf2d02db"
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
