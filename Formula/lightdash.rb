class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2502.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2502.0/lightdash-cli-0.2502.0-macos-arm64.tar.gz"
      sha256 "1c0bba0fa75c76949f0cc3946939900767b4eeaa6c47ff0405a1752d6912afa4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2502.0/lightdash-cli-0.2502.0-macos-x64.tar.gz"
      sha256 "8c5e04a19fe544a3370aaeebb0e3816af6eb17f715d351b227a1769d02ad97c2"
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
