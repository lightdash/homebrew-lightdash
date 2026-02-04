class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2418.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.3/lightdash-cli-0.2418.3-macos-arm64.tar.gz"
      sha256 "35735db8da651481f55422058d3d26c4e83bdcfe135727982997f32718fa0f9d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.3/lightdash-cli-0.2418.3-macos-x64.tar.gz"
      sha256 "f814386862154839f47c7faf6fe56ca81e9aef0721146de729e70cea77e29b7e"
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
