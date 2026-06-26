class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3251.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3251.0/lightdash-cli-0.3251.0-macos-arm64.tar.gz"
      sha256 "9d9da05192f0c4a5e41f9576438d66169462a603202669b6ff58fb5bcfed30f4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3251.0/lightdash-cli-0.3251.0-macos-x64.tar.gz"
      sha256 "db80f710b4074332bb7d2624368a4a7c43462d2ca06591fdd4186fd6f374844c"
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
