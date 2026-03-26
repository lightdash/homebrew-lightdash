class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2668.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2668.0/lightdash-cli-0.2668.0-macos-arm64.tar.gz"
      sha256 "439d92aeca713947a415acce9b8256859ce0bb8c0fe6bac9017258e97e5a4945"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2668.0/lightdash-cli-0.2668.0-macos-x64.tar.gz"
      sha256 "914ab1d71ec79cf6222f05180d319b3268bb638af652cdd9144154be99d36659"
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
