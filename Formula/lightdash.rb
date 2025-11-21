class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2199.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2199.0/lightdash-cli-0.2199.0-macos-arm64.tar.gz"
      sha256 "9ff1d5238dfe8e1b48dbce55f0325d2359699464434cec76893bdde840cf126d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2199.0/lightdash-cli-0.2199.0-macos-x64.tar.gz"
      sha256 "cb2e07edcd665e165f000ac151535cd334e205b1bab99fc7ff077d2ede386733"
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
