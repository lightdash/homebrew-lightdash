class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2202.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2202.1/lightdash-cli-0.2202.1-macos-arm64.tar.gz"
      sha256 "7dd0a10d8eccb190fab4fab4dea1c568ce4dff770ad1bbbf8c2887f3d06f22ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2202.1/lightdash-cli-0.2202.1-macos-x64.tar.gz"
      sha256 "feeb23df557d07933d1d6de0800afbaea38573764cfae7f0d9f776d7e33d3f0b"
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
