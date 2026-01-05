class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2296.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2296.0/lightdash-cli-0.2296.0-macos-arm64.tar.gz"
      sha256 "e844f772b425aa26e9f80131bbb2ad002f052f671c53516061ab16e8d9f0ef88"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2296.0/lightdash-cli-0.2296.0-macos-x64.tar.gz"
      sha256 "5470a92e77726d14c4fe610a53df8690276beb379277d20e33ec3a2370545283"
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
