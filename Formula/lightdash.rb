class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3104.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.0/lightdash-cli-0.3104.0-macos-arm64.tar.gz"
      sha256 "8db15f5d37f70cd952b2fe3fdb1f38dd9378e041f354922dfdb02129a9775a53"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.0/lightdash-cli-0.3104.0-macos-x64.tar.gz"
      sha256 "15430f3b65f4848e7947ecc1b6a0997afeb565a1924b50d58390c3b10a0af1fc"
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
