class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2807.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2807.0/lightdash-cli-0.2807.0-macos-arm64.tar.gz"
      sha256 "2eb5112c7b371f5fe094cb3a0be8de7b84bae9d49a6c77f4c01f7edf5b0eaebd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2807.0/lightdash-cli-0.2807.0-macos-x64.tar.gz"
      sha256 "8f87084a6176063ddc9d37583bc12bc0512796cd743ef22788724125f31d3d33"
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
