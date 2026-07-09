class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3342.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3342.0/lightdash-cli-0.3342.0-macos-arm64.tar.gz"
      sha256 "d0db2b1d96b81d7bb40cf9daa9dd6166aee4f13b7944e8a3ab883f1b6854e027"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3342.0/lightdash-cli-0.3342.0-macos-x64.tar.gz"
      sha256 "da9b49bdb71cf40e11620a0c8cde217b32c18817ae45801c77eb0fba8cfd4210"
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
