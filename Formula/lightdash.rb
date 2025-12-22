class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2269.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.5/lightdash-cli-0.2269.5-macos-arm64.tar.gz"
      sha256 "5e9e980ae93710d0ab205efa7dfcf3cdb5d3be57ffccbe21a7b5d0bbd31bd3ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.5/lightdash-cli-0.2269.5-macos-x64.tar.gz"
      sha256 "2b098735f8bf77e92426c65ae23b8b40d8f800e1410b240e256875365ea8badd"
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
