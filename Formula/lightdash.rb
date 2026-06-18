class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3187.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3187.2/lightdash-cli-0.3187.2-macos-arm64.tar.gz"
      sha256 "c2bfda37fea5053fe2fa3a5dcc44a364edb5347203b910d342057996f561cdea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3187.2/lightdash-cli-0.3187.2-macos-x64.tar.gz"
      sha256 "393b2b2423963cc405b4ba5c77f1068589aa5e1f720d51d6893767228e266e1e"
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
