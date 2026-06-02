class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3080.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3080.1/lightdash-cli-0.3080.1-macos-arm64.tar.gz"
      sha256 "e8697b67df0ec9b8f3c7b26bd54d0334a44084afb0e8c8063ca136483aacfaf7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3080.1/lightdash-cli-0.3080.1-macos-x64.tar.gz"
      sha256 "2e8a01df29e47ca1c9ee2d87a3eb09ba7cee63478fca0bcbd9c3001bd50e312d"
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
