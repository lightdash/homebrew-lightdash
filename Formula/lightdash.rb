class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2775.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2775.0/lightdash-cli-0.2775.0-macos-arm64.tar.gz"
      sha256 "29edb232526ab629daee3f4fa62b4666c54ed9bf430fc316777431b319b7edbe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2775.0/lightdash-cli-0.2775.0-macos-x64.tar.gz"
      sha256 "3ad1bcad7da5ded13296417f8b41b2ce8375f26ebc1e529b5e95d041f151f082"
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
