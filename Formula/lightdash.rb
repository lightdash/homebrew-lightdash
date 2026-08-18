class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.189.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.189.0/lightdash-cli-1.189.0-macos-arm64.tar.gz"
      sha256 "0ccdb8360e4d76061a2ed8e587d2220df270e97bbfc75345eb6adbd441eca1cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.189.0/lightdash-cli-1.189.0-macos-x64.tar.gz"
      sha256 "b7886f541c5b07a41e6fedee3ebd477d78ea1cfee8a414fa48924d4235f022c4"
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
