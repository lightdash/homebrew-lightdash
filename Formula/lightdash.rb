class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2354.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2354.0/lightdash-cli-0.2354.0-macos-arm64.tar.gz"
      sha256 "b074e947390d46698fe4b74e8ab02041a91f47965301ec8967d6e93716b66bd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2354.0/lightdash-cli-0.2354.0-macos-x64.tar.gz"
      sha256 "4b14ccee1b18dd5b41360682ad8daf70bd94ad83515365efcd93d5570893754c"
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
