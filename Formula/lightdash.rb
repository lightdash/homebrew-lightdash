class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.107.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.107.0/lightdash-cli-2.107.0-macos-arm64.tar.gz"
      sha256 "9a38845eddb9dacd003dc80729a13d0ca313ae3421671f1159e293ee65cf6793"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.107.0/lightdash-cli-2.107.0-macos-x64.tar.gz"
      sha256 "a825406cf8465c4130e72d6c37905ee3128047e8b75698c301afdcabd3498aad"
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
