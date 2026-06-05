class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3100.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3100.0/lightdash-cli-0.3100.0-macos-arm64.tar.gz"
      sha256 "c38a1658f2af7d2067041f705ba6dc89dbb40d31d97eb0fbcd4a591eddbdcdc2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3100.0/lightdash-cli-0.3100.0-macos-x64.tar.gz"
      sha256 "6778d1cd1e9ee0c120289390b19a9b563230b08e1daeddc3a0ad2cf4112f741c"
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
