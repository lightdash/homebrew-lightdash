class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3012.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3012.2/lightdash-cli-0.3012.2-macos-arm64.tar.gz"
      sha256 "f93cb6058663b6863a31a003583165e0fa796d83cb9c0ef9adf4b1d36f3b0a4b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3012.2/lightdash-cli-0.3012.2-macos-x64.tar.gz"
      sha256 "858c8993d61ff5df08b554531cbd5cd2d67f7fa1806f3b1ec88cf4d81eb76a40"
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
