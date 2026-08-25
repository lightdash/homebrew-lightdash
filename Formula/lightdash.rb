class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.260.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.260.1/lightdash-cli-1.260.1-macos-arm64.tar.gz"
      sha256 "3dd563e143e2a0df96c71d10a41e5fa44093c3a30fa4e6154cbaeb5d111d4e02"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.260.1/lightdash-cli-1.260.1-macos-x64.tar.gz"
      sha256 "5852df36473714c2655d2ca88a201e915fd915df765910f9e6b79d2e3c89c417"
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
