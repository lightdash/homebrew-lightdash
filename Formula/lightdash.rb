class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3148.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3148.0/lightdash-cli-0.3148.0-macos-arm64.tar.gz"
      sha256 "f2da3b7d84ae0eed6f08afdf3701613400f17ad9fe36640eedd50e9eaecb4680"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3148.0/lightdash-cli-0.3148.0-macos-x64.tar.gz"
      sha256 "9be786e320fb4f3d35b87110310be58f98a2e1a9f8d83e3ab5e35b1559bfe5f0"
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
