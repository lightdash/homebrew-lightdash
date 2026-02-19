class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2490.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2490.1/lightdash-cli-0.2490.1-macos-arm64.tar.gz"
      sha256 "909d7b98fd178f1d552ea9321199b20e6eaf7c951f55f22835c4601201e2af33"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2490.1/lightdash-cli-0.2490.1-macos-x64.tar.gz"
      sha256 "1421fa88c4f9384ea502e0778df58e53dea637c1e0b0122060673ba625127610"
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
