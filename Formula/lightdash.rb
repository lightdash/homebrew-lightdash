class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.74.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.74.0/lightdash-cli-2.74.0-macos-arm64.tar.gz"
      sha256 "bd39e6f045ca08a1df0d113b534c59579852a96a99d4257070968fd64e48a7e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.74.0/lightdash-cli-2.74.0-macos-x64.tar.gz"
      sha256 "97b96d6d7f17a9da4675f589802526366c79142dfaa10165909f1c566fc18f51"
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
