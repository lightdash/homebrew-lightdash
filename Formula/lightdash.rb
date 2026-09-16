class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.233.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.233.0/lightdash-cli-2.233.0-macos-arm64.tar.gz"
      sha256 "9cdc132d13cb076e3513ee124f5ff759b6b8f5d4b9f7df9aa23784325d8d80e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.233.0/lightdash-cli-2.233.0-macos-x64.tar.gz"
      sha256 "49b84f06c1451901fc6c9413795d67039eec916be2f8d2ccb9b99b04ef9f3e69"
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
