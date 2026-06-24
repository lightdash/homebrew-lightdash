class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3237.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.2/lightdash-cli-0.3237.2-macos-arm64.tar.gz"
      sha256 "527ffa759c4c993c25c12fac19dd122d3a3ffca0d10dee4edbe01d0d619208f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.2/lightdash-cli-0.3237.2-macos-x64.tar.gz"
      sha256 "5a4b74e48d6859b06303b1a2e9e8674115a1a030e1ae0df6c17a52f15e5d0976"
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
