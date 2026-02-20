class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2498.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.4/lightdash-cli-0.2498.4-macos-arm64.tar.gz"
      sha256 "9367dab8be2323a9d63dce5755e45241ec7bc5a31932e8303628c736f9ef0d7a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.4/lightdash-cli-0.2498.4-macos-x64.tar.gz"
      sha256 "062e112a8186475933d9ff293479fd7ca09f2267beb6fbe34ff2c6820c3a8cdd"
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
