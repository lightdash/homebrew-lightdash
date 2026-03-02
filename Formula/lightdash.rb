class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2549.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2549.1/lightdash-cli-0.2549.1-macos-arm64.tar.gz"
      sha256 "797d0590a7863c6a39555c63ce537f1add9c3a31709b2aea1a7b0274bb4a737e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2549.1/lightdash-cli-0.2549.1-macos-x64.tar.gz"
      sha256 "ef1b1030fce348ce25d45f7cf1c96dc009929ec3202f2970469a51421849f269"
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
