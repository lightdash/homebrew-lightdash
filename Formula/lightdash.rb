class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2312.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2312.0/lightdash-cli-0.2312.0-macos-arm64.tar.gz"
      sha256 "17152487378d4cb8e01996afd08cc1eed5d56a47704bdefd3aa1ef2de2a8f887"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2312.0/lightdash-cli-0.2312.0-macos-x64.tar.gz"
      sha256 "1d5bd1c76587880cbd9a806e5a401e5a90cf2ba9c40f320038ceee76c4dfeb36"
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
