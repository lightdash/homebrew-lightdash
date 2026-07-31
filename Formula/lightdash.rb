class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.56.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.56.1/lightdash-cli-1.56.1-macos-arm64.tar.gz"
      sha256 "35a3bccd136dff3bda24b0a3d4bfec37b80944119cbbc809e5db53ac415baf93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.56.1/lightdash-cli-1.56.1-macos-x64.tar.gz"
      sha256 "8dee588a37688641032e76a4b88c65287b90a616627574387f6d69f134b507b4"
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
