class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2730.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2730.0/lightdash-cli-0.2730.0-macos-arm64.tar.gz"
      sha256 "4f60206b8d2d2d630589e43f825de7cd2fb9080530394bc912b3f2f4681b2164"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2730.0/lightdash-cli-0.2730.0-macos-x64.tar.gz"
      sha256 "09237a9824ad7548c29f576bee6cc45a3e0b8f2ab1de331ea7707f13287f336a"
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
