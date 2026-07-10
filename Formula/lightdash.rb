class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3358.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3358.1/lightdash-cli-0.3358.1-macos-arm64.tar.gz"
      sha256 "a859f6439296575f9bd512d0dcee61cadb41374e2aec47c775322c85a9ff82d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3358.1/lightdash-cli-0.3358.1-macos-x64.tar.gz"
      sha256 "fe21ea0659589c17f4f487452d716a60745da711fed981d360c0a3dec9044b23"
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
