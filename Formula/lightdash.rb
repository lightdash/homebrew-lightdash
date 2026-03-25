class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2666.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2666.1/lightdash-cli-0.2666.1-macos-arm64.tar.gz"
      sha256 "f96d764df00b84ff5077cea93ca61fb35db2465acc9bcbd81e141005bec463be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2666.1/lightdash-cli-0.2666.1-macos-x64.tar.gz"
      sha256 "0dc19ee0a1fe240cd295da8e2c76f6b5f83525ce501b734f91da901902a55790"
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
