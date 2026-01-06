class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2302.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2302.1/lightdash-cli-0.2302.1-macos-arm64.tar.gz"
      sha256 "8f5262701f4b63bdceca0a101219e3dca2e0acd07d6ef092699feb1484797dbd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2302.1/lightdash-cli-0.2302.1-macos-x64.tar.gz"
      sha256 "28bc6e649947caeddafc938aa924d188cacf358b9300e0d51e0781fd0d74ce8c"
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
