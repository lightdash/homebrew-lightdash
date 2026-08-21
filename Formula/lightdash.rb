class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.235.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.4/lightdash-cli-1.235.4-macos-arm64.tar.gz"
      sha256 "30f10b2490be4aa4780d710ffbf4cab6bc1943bdb473256db79ca6dd2ae86dc6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.4/lightdash-cli-1.235.4-macos-x64.tar.gz"
      sha256 "72c920f46aeb380bf3939d97413016f07058676d5e80929aed8f61657bdb8913"
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
