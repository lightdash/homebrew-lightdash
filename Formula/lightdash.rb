class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2687.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2687.1/lightdash-cli-0.2687.1-macos-arm64.tar.gz"
      sha256 "9458cfaa8f25c50186b6ee45674dd55d7542a787ebfa284eaaed0b9e3c1c90d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2687.1/lightdash-cli-0.2687.1-macos-x64.tar.gz"
      sha256 "8112b90c392b2eb26456ec00c99d1b24792419949cd3df31cc48eacc6f22a347"
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
