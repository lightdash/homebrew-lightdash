class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.146.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.3/lightdash-cli-1.146.3-macos-arm64.tar.gz"
      sha256 "68cfb2324e093b17beb43040650a71010d3578f70483a8d065e5fd698aefb6d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.3/lightdash-cli-1.146.3-macos-x64.tar.gz"
      sha256 "70ce3cb64bb40a570577f8218b6f0ed90657ba7c33a676bf0dd1ebc7c069d18b"
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
