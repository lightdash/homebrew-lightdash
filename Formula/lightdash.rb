class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2671.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2671.1/lightdash-cli-0.2671.1-macos-arm64.tar.gz"
      sha256 "a7d243fe82abc96b8c7ada5edc83db52011cd3277d100564cc52845ed4fb85ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2671.1/lightdash-cli-0.2671.1-macos-x64.tar.gz"
      sha256 "19d950a1b9b3c3dffc414d7daee7a98b1868454d09a9f60c1e22b8f7a3608e3b"
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
