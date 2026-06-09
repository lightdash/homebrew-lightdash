class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3121.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3121.1/lightdash-cli-0.3121.1-macos-arm64.tar.gz"
      sha256 "9c3479eadb2e8baf297e2b147730769fa88312fe66c229b49096581a8f0455ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3121.1/lightdash-cli-0.3121.1-macos-x64.tar.gz"
      sha256 "c999d7733b1dc7fd46fcfc54d32551d726e1ce480ebfbf5eb5927173205f8851"
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
