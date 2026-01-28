class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2385.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2385.0/lightdash-cli-0.2385.0-macos-arm64.tar.gz"
      sha256 "36f3c42e6e6d4083aa7107d24e46deef867833765609a33f878ca7be0b4e571e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2385.0/lightdash-cli-0.2385.0-macos-x64.tar.gz"
      sha256 "264045bdff2398e1d01b2822564fa115d419bd5903d2ed5fea4b937813d83123"
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
