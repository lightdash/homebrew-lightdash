class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2278.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.1/lightdash-cli-0.2278.1-macos-arm64.tar.gz"
      sha256 "d60b63790d51aa23dadca36df8fa7811f05f6fa1bcf5e3179c9eec87b44b6441"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.1/lightdash-cli-0.2278.1-macos-x64.tar.gz"
      sha256 "caefbe5a16e4696abe1b2ed1eff60208a87f4661dd49764bed0a051dcd2808b7"
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
