class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2810.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2810.0/lightdash-cli-0.2810.0-macos-arm64.tar.gz"
      sha256 "aa0483f3bed77615dd275eeb6b87e7cc53998e355565be45ef51d23bdb1c58e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2810.0/lightdash-cli-0.2810.0-macos-x64.tar.gz"
      sha256 "192c2502b1b9d6de6dc4ab8b7fd9f4ae9abea0e79bd1ef822db1ee4c6c54458d"
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
