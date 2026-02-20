class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2499.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2499.1/lightdash-cli-0.2499.1-macos-arm64.tar.gz"
      sha256 "b7970cac3d815c738b5d62daa37ad4a00a32be05030fcfa4169e0ea86e87c3bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2499.1/lightdash-cli-0.2499.1-macos-x64.tar.gz"
      sha256 "1937db4c633cbffed657a4585327bd78725d04258b26ccaefca4cfb6006bf0a5"
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
