class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2527.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2527.1/lightdash-cli-0.2527.1-macos-arm64.tar.gz"
      sha256 "fc0db6cf774f6d84718f3cb4f09055b764cb69486992f00f077017c4ccfe009f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2527.1/lightdash-cli-0.2527.1-macos-x64.tar.gz"
      sha256 "013df80d61bf9a4acda26a39dec58cfe9c68819ff56fc14bf583e7e8fec7a8c5"
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
