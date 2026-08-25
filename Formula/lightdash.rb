class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.262.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.262.0/lightdash-cli-1.262.0-macos-arm64.tar.gz"
      sha256 "a41fd327492e33206cb69b35333cfe0941347f103b09318908117bee532dfacc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.262.0/lightdash-cli-1.262.0-macos-x64.tar.gz"
      sha256 "577793fe465d8ec6de90328d4ab166c18d7d88d08334a8bd29eb114d0add4f1e"
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
