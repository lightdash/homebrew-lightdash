class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.61.0/lightdash-cli-2.61.0-macos-arm64.tar.gz"
      sha256 "793d004f17f467af323ce6020a7800e0c4956753d4bb58e65a5c47954b54d95a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.61.0/lightdash-cli-2.61.0-macos-x64.tar.gz"
      sha256 "b79c458155987b66397f541bf90ba651f0160f17348d9c304136d22cbda7c351"
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
