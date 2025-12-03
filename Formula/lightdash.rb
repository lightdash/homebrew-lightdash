class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2219.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2219.0/lightdash-cli-0.2219.0-macos-arm64.tar.gz"
      sha256 "590937ce2b0bf9cd2fa543b6b6e0a74c9d970e916b0a151a5fd4e971e4b211a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2219.0/lightdash-cli-0.2219.0-macos-x64.tar.gz"
      sha256 "e55cd5d4be2ea9305c9f7b11835ac6ec40822e2ba48b4a935f696f1034556366"
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
