class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2280.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2280.1/lightdash-cli-0.2280.1-macos-arm64.tar.gz"
      sha256 "927c92ee8eb66403eeb4eef7231a84e3009fce5267f61bc597e0acbef65656c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2280.1/lightdash-cli-0.2280.1-macos-x64.tar.gz"
      sha256 "88047e4fbc3aaa274eb51babc74a3a85d35c87f3af93ea305670796889284941"
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
