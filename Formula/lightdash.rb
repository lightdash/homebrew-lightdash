class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2602.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2602.1/lightdash-cli-0.2602.1-macos-arm64.tar.gz"
      sha256 "e39016c2df8443d2e070905333a47495c34c82591b1443feae5b38c3bd304a00"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2602.1/lightdash-cli-0.2602.1-macos-x64.tar.gz"
      sha256 "dbdc9390dd5725adaac9871dd23aea31acc5e1e6d72f05dc4e427c4b63879992"
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
