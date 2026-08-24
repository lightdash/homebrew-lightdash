class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.250.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.250.0/lightdash-cli-1.250.0-macos-arm64.tar.gz"
      sha256 "4afd9d55cff9ff61fad397194f9fcf6d7981751243401a09f61fa9447f427958"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.250.0/lightdash-cli-1.250.0-macos-x64.tar.gz"
      sha256 "f4408b0654d687bb22f60cbcd1f8e1466811bb38ed7cf4856b5cd94d755ffec7"
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
