class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.145.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.145.0/lightdash-cli-2.145.0-macos-arm64.tar.gz"
      sha256 "8ebe1002291432dd9f3ad84b5ed1d4111b890724ffba202c9f1811e4dda2b534"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.145.0/lightdash-cli-2.145.0-macos-x64.tar.gz"
      sha256 "17286eb6c9e2a646d6cf210c7b6ce28eda80ece436b770b6b54df6753438c955"
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
