class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2502.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2502.2/lightdash-cli-0.2502.2-macos-arm64.tar.gz"
      sha256 "5e9fd8c99bcea6ae2c068a6cbdfa77b5b6f3da8d1c1e01f874889cc6007a68b1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2502.2/lightdash-cli-0.2502.2-macos-x64.tar.gz"
      sha256 "ef0e9990c000c943caba801ddd1181d82719ec74fa94eb7a311e4a0c4616712a"
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
