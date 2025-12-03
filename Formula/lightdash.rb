class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2221.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.5/lightdash-cli-0.2221.5-macos-arm64.tar.gz"
      sha256 "e9ada34daaff89c4513bfd862903003a710bb934ef2b1f711594f8ee7555a8d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.5/lightdash-cli-0.2221.5-macos-x64.tar.gz"
      sha256 "973597c2fe34b2f0c4aaad1dd83128cf64943288173d42c9bb59f9df1d8de05d"
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
