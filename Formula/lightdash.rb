class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2410.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2410.1/lightdash-cli-0.2410.1-macos-arm64.tar.gz"
      sha256 "be8f344456c83b6fd9f91e60f6c06d075f82fe394b37c812f823d5a11fe9b928"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2410.1/lightdash-cli-0.2410.1-macos-x64.tar.gz"
      sha256 "29dd4f6baffd848aeba2799a41d9c7182e6722aefa5889a8e4d77e9764560b72"
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
