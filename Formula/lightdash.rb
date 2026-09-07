class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.149.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.3/lightdash-cli-2.149.3-macos-arm64.tar.gz"
      sha256 "402d636217fb2c1dd75073760dd92a828c2ca54081e978796cf846286f9b78c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.3/lightdash-cli-2.149.3-macos-x64.tar.gz"
      sha256 "0a1d04c93ca6378dbf7b00aed900426e23282cf36df20cfc04ab634ca969c22d"
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
