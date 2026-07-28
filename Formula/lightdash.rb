class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.4.1/lightdash-cli-1.4.1-macos-arm64.tar.gz"
      sha256 "20beccb29fe768331084ef72498b168f23ae7ba87fc3b704521d55631c82d8f4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.4.1/lightdash-cli-1.4.1-macos-x64.tar.gz"
      sha256 "c287eec05fd901770c3b9021167680623bc22175908d02b590c09c37bb293801"
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
