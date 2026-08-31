class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.67.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.3/lightdash-cli-2.67.3-macos-arm64.tar.gz"
      sha256 "ac16e80a08f42ff0f8a7bcfd44eefe1168f97b735dd714d50e67b770f48fbe50"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.3/lightdash-cli-2.67.3-macos-x64.tar.gz"
      sha256 "769577508ba69b94b8a315c1afa71dc071dd5c11c29398bf537f586dd5599891"
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
