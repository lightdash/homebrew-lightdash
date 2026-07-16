class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3397.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3397.0/lightdash-cli-0.3397.0-macos-arm64.tar.gz"
      sha256 "3affac84ed1cda37c82450d0edccd99a89ef8f62de4399c8225e9b7162dc678e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3397.0/lightdash-cli-0.3397.0-macos-x64.tar.gz"
      sha256 "a21cb27ee8f86456db71fc533f084e312cb3a986c77f1e814b120a1819630689"
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
