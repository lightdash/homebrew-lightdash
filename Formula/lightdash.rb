class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2999.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2999.1/lightdash-cli-0.2999.1-macos-arm64.tar.gz"
      sha256 "44f80279f50865955254d1ee24e8612fa1fc8c0db651378bb673a1017ea36cbf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2999.1/lightdash-cli-0.2999.1-macos-x64.tar.gz"
      sha256 "1550026f3e600aa8e709b5ecca47f4ad8a15af5ff3186948ca3cc38055c06f33"
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
