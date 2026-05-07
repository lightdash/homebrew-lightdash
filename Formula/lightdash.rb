class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2902.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2902.0/lightdash-cli-0.2902.0-macos-arm64.tar.gz"
      sha256 "7b653a175ef5d8022a87854cf5b22b054c254e3808502a7dd56a395e77a7d329"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2902.0/lightdash-cli-0.2902.0-macos-x64.tar.gz"
      sha256 "1de8213115dc4a064b1723726907b70e925315b265c08baeea5d4412d075f965"
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
