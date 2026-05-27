class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3028.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3028.0/lightdash-cli-0.3028.0-macos-arm64.tar.gz"
      sha256 "b1d9fdfaca7091f27d8b9116b704fcc51e1b3cfe4c414d56936d8ca5218aac86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3028.0/lightdash-cli-0.3028.0-macos-x64.tar.gz"
      sha256 "a0fe20e374a8fd4bd214439bbdb628832952a10e9c2077da1bb94643c794d524"
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
