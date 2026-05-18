class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2960.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2960.1/lightdash-cli-0.2960.1-macos-arm64.tar.gz"
      sha256 "f30196007c4e493c451193ddbd832f718fb258ea2c215a4d589e9dea4e8738e7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2960.1/lightdash-cli-0.2960.1-macos-x64.tar.gz"
      sha256 "741cfe1defb43ca9dfd6b00942e6c25996bbab6be20a120a0c57bbba3cf0c2b9"
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
