class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2536.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.3/lightdash-cli-0.2536.3-macos-arm64.tar.gz"
      sha256 "a05eb5b0be7a544cc1762118f078ac9c75000503aab1eb9ba884a925bc4a38ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.3/lightdash-cli-0.2536.3-macos-x64.tar.gz"
      sha256 "1b04fce10ccb909849387522c40a9197aee2d30eddf0a7473e47d7c95020c30e"
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
