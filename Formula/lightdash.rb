class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.60.0/lightdash-cli-1.60.0-macos-arm64.tar.gz"
      sha256 "027e8c549c8cc45983ab7f17f24f4e3bc1fe487606fa418dbd19548022abec75"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.60.0/lightdash-cli-1.60.0-macos-x64.tar.gz"
      sha256 "e36515466d53b6375380f7f1c600f97cb27af07fd8773e7050c9f8275d9ec2ea"
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
