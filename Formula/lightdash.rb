class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2548.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2548.0/lightdash-cli-0.2548.0-macos-arm64.tar.gz"
      sha256 "a01c88453745f222fa38eaab8d1ca8e25300a9e8d1547f10480f1614c7d03e26"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2548.0/lightdash-cli-0.2548.0-macos-x64.tar.gz"
      sha256 "d92f5c2b4b9ea6f9906ac0a88789d57071fc675e8e303933b7d99dd24c78cd14"
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
