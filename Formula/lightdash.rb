class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.152.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.152.0/lightdash-cli-2.152.0-macos-arm64.tar.gz"
      sha256 "127dc1eb5acf50113c3210c5469f518f20901ef4ef0ea78f8146478db17687ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.152.0/lightdash-cli-2.152.0-macos-x64.tar.gz"
      sha256 "3473f549a45a8c39b4f616614d21950f3918f3a3321906e608481fa8da1111f6"
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
