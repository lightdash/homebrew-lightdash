class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.4.0/lightdash-cli-1.4.0-macos-arm64.tar.gz"
      sha256 "3fad94869fbcd8002b09b692758e76d21f2c51559a06efd7e68ad48b1eac1c02"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.4.0/lightdash-cli-1.4.0-macos-x64.tar.gz"
      sha256 "fddf17f56aa73a0a67dbd13016bfe112d3207b89fc0622104dbc3b33bc20bad3"
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
