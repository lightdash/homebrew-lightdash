class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.97.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.97.0/lightdash-cli-2.97.0-macos-arm64.tar.gz"
      sha256 "910c6975718e156ce1a384f6704bec2221bc5413208ac50b7c40f7e2e6c36326"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.97.0/lightdash-cli-2.97.0-macos-x64.tar.gz"
      sha256 "0d303ec09074211258165762aae5a609fc3c3e3e951371802c4876bc1867f0a8"
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
