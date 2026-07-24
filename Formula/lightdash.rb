class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3476.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3476.1/lightdash-cli-0.3476.1-macos-arm64.tar.gz"
      sha256 "74cd35193276e499b80aaae3b8b3e73c7a8d8ddb3af6ced69b1c123e8c4014c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3476.1/lightdash-cli-0.3476.1-macos-x64.tar.gz"
      sha256 "f922271a90a0f73527e6142ae905adc81d9fac63679679d0c622db144c408012"
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
