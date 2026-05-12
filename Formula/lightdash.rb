class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2915.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2915.0/lightdash-cli-0.2915.0-macos-arm64.tar.gz"
      sha256 "c528cdc6c7bad763cbd4895439325287f6ac09373e3fc816e506f17a826f5395"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2915.0/lightdash-cli-0.2915.0-macos-x64.tar.gz"
      sha256 "f11592e68aaa46f970d63c793dc123d8a7624f5884f915020f70a1afdb1ce2f3"
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
