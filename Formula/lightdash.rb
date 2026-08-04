class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.76.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.76.1/lightdash-cli-1.76.1-macos-arm64.tar.gz"
      sha256 "7583990bf2ef7556f349eccbb7f226359e280025372c99ecf1b7a24af5d28ecc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.76.1/lightdash-cli-1.76.1-macos-x64.tar.gz"
      sha256 "34921e5152e46b7105764cd89646a01ab6aa6c6c8fa636361dd91e1a2a24268b"
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
