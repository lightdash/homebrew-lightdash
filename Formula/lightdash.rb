class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2617.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2617.1/lightdash-cli-0.2617.1-macos-arm64.tar.gz"
      sha256 "0e278b3bfcb8c4ead0877e1934d4c6facd0a98456bf2c1a8ca8457e930418c54"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2617.1/lightdash-cli-0.2617.1-macos-x64.tar.gz"
      sha256 "2571fa6d8a98d07ab5262c5b38b070cf610b52e0bfd8e5bf7db7e39c0ec8f124"
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
