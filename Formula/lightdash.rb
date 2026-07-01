class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3274.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3274.1/lightdash-cli-0.3274.1-macos-arm64.tar.gz"
      sha256 "a6df2c8b60a6b480470762efcddda5d8db24947c6c2f78807bbd8e1950d7d00b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3274.1/lightdash-cli-0.3274.1-macos-x64.tar.gz"
      sha256 "1a7156668e4f3750f7a6254b64c3ce74441f8d3945a44cd00328f68654c5a636"
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
