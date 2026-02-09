class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2444.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2444.1/lightdash-cli-0.2444.1-macos-arm64.tar.gz"
      sha256 "e443d31ce6ef9ddb0f88fed249eaa30b71e8106160930444d46c38d2011fe721"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2444.1/lightdash-cli-0.2444.1-macos-x64.tar.gz"
      sha256 "f3b9feeabcf6598363a5a77eb18746c7f8efc249ebf9fe2a16a061b0fd0aa3ca"
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
