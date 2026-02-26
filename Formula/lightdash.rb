class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2538.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2538.0/lightdash-cli-0.2538.0-macos-arm64.tar.gz"
      sha256 "67079cee8208c68ae40bbf3566802c7f13af53314747fd58c921559522988ca8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2538.0/lightdash-cli-0.2538.0-macos-x64.tar.gz"
      sha256 "51924707c8b170dfdcd8b01328ca51a2bfa2154bb32f6f565f91ad8d69000cf6"
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
