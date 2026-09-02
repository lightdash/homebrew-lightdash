class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.88.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.88.0/lightdash-cli-2.88.0-macos-arm64.tar.gz"
      sha256 "cc3dfb2066b22de8b5e6b38356d8fc9cab0c8eb1685da4ad8cbd27c219d3eba9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.88.0/lightdash-cli-2.88.0-macos-x64.tar.gz"
      sha256 "210b0b153f81b1d76aa6908ad298c6a364207661db9e377281115ebb6dc5fcbe"
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
