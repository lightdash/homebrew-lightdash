class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2667.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2667.0/lightdash-cli-0.2667.0-macos-arm64.tar.gz"
      sha256 "34a988c3fae01e55f0273f02bdc0d663641795d0541b345f1e23aba4641bb9f6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2667.0/lightdash-cli-0.2667.0-macos-x64.tar.gz"
      sha256 "6123d2daf308b226d625afca7431bc8f53227f5b8d82a914a0a9bd10e4c811cb"
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
