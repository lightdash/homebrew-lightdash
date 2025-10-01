class Lightdash < Formula
  desc "Lightdash CLI"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2031.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lightdash/lightdash/releases/download/0.2031.0/lightdash-cli-v0.2031.0-macos-arm64.tar.gz"
      sha256 "aa7b4c6682a5b9d12f1a91ccaf832d4b9178f30527d5a4db61dac4710acfd131"
    else
      url "https://github.com/lightdash/lightdash/releases/download/0.2031.0/lightdash-cli-v0.2031.0-macos-x64.tar.gz"
      sha256 "42bd880f6c5474537e77b6b8d55f2bbad28a65133272a1fffc0dd559011ad042"
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
