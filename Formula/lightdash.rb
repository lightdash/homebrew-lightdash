class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2929.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2929.0/lightdash-cli-0.2929.0-macos-arm64.tar.gz"
      sha256 "15871429d300a53e237dadb273058fad9b3c75b16b43ed73959b02f9f7b7d518"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2929.0/lightdash-cli-0.2929.0-macos-x64.tar.gz"
      sha256 "607690d8859275a5d7e5a5624d4574ae8bbfe8d044aa09ab76bf7fd8fcff458c"
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
