class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2927.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2927.2/lightdash-cli-0.2927.2-macos-arm64.tar.gz"
      sha256 "696638c5b70bc5b90a7a9c95d5a4830a1d6b439eafc69fde7cb41687f7d9c47a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2927.2/lightdash-cli-0.2927.2-macos-x64.tar.gz"
      sha256 "bdbf0f97a97f022d57d9a6652bbd8e24f6e9f1177d11ad36a132ae5b904a74d4"
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
