class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2579.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2579.2/lightdash-cli-0.2579.2-macos-arm64.tar.gz"
      sha256 "23f067918c769197e9c8e55d37109bb3e6b526112572061ba14d156d696e8fc8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2579.2/lightdash-cli-0.2579.2-macos-x64.tar.gz"
      sha256 "cbac1ccc6b78005ee392692b9ccbd47e7b42f2c64e20770d169d57bee1b8d8a4"
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
