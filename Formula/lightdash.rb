class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2494.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2494.0/lightdash-cli-0.2494.0-macos-arm64.tar.gz"
      sha256 "67394b020bdad770d8340f92808e171ef0e093305718aa6f6c5b39c56396309a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2494.0/lightdash-cli-0.2494.0-macos-x64.tar.gz"
      sha256 "4b11e23582b89667d6307d9733ff2e0774512d8f9a2ce8ff532577eae0b3ccda"
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
