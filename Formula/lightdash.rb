class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2399.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2399.1/lightdash-cli-0.2399.1-macos-arm64.tar.gz"
      sha256 "1272ff328803a5acc3ea7ba0d7910f67eaf0168326c82d67493f342ea6fc079c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2399.1/lightdash-cli-0.2399.1-macos-x64.tar.gz"
      sha256 "6e7f3a050740baab8960e30b2813c2267958052f2c4b6ad565a73f7ab9618bf5"
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
