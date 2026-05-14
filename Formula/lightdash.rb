class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2943.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2943.0/lightdash-cli-0.2943.0-macos-arm64.tar.gz"
      sha256 "cbfcf8f8a93b248e25a3b07a9f08ae70718a501ec1147011525a3e2879b6af05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2943.0/lightdash-cli-0.2943.0-macos-x64.tar.gz"
      sha256 "9bc3c937e17dc9a4a40bc2903bc795de40e9e7e6648e7c7efc4eeec5c5dc1723"
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
