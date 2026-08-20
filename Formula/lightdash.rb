class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.228.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.228.1/lightdash-cli-1.228.1-macos-arm64.tar.gz"
      sha256 "edd85f732aeea59d04f9994dfc8b3c46142297631ae6ad4cf9cc76ec566c92eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.228.1/lightdash-cli-1.228.1-macos-x64.tar.gz"
      sha256 "d59124f1bcc02c79542b1dc4d7190c6c0b112ac1f20111722b559ac1e2988714"
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
