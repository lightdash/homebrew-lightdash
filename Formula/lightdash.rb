class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.159.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.2/lightdash-cli-1.159.2-macos-arm64.tar.gz"
      sha256 "f19a72641767118d6dcaac6091b466754ba29d56c60d827b70705217fdd6af59"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.2/lightdash-cli-1.159.2-macos-x64.tar.gz"
      sha256 "73851620a76bacdaef29e467422654ed519497609767a91471cbbba46483fccd"
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
