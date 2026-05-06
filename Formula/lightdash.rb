class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2876.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2876.1/lightdash-cli-0.2876.1-macos-arm64.tar.gz"
      sha256 "0c8df5d55ac1c4d940e63ef65289f6975d153da492fc136623255e02b6957089"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2876.1/lightdash-cli-0.2876.1-macos-x64.tar.gz"
      sha256 "e1d3e529cc035b218910efe310f69bf6ceeddd8191bd688269d45ed013623d71"
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
