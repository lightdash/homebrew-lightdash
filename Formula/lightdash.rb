class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.228.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.228.0/lightdash-cli-2.228.0-macos-arm64.tar.gz"
      sha256 "36d0d5033921cb82f7c00a3b2230acf67952a454b601c4fd94335397bde99a6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.228.0/lightdash-cli-2.228.0-macos-x64.tar.gz"
      sha256 "f038ac161e95e920740c472064818f50e364d96fc54f6487ae05bfc840b0f436"
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
