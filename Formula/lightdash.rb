class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2563.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2563.1/lightdash-cli-0.2563.1-macos-arm64.tar.gz"
      sha256 "ef114e1079e4a32ee05c0aa161c08acf595aef6e3c7a601dd16f757c4fa5e251"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2563.1/lightdash-cli-0.2563.1-macos-x64.tar.gz"
      sha256 "eb8f98fa548a4e1920b4c9e92fce46feeb2493f392a1a95afe92c1fa68763b12"
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
