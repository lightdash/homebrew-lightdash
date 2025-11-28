class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2211.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2211.0/lightdash-cli-0.2211.0-macos-arm64.tar.gz"
      sha256 "126d23384151822877999da797b2264075a6b5213cfefbede1907b3016856879"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2211.0/lightdash-cli-0.2211.0-macos-x64.tar.gz"
      sha256 "ccb3c0f6439603aa831e2b45bf8fe098326730ea3669c23d041492a9f974a560"
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
