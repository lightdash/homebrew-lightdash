class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2184.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2184.1/lightdash-cli-0.2184.1-macos-arm64.tar.gz"
      sha256 "f01b1c2bb081255a609ce14532cacdecf7469569b5bdc12c3068909775527095"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2184.1/lightdash-cli-0.2184.1-macos-x64.tar.gz"
      sha256 "8100d7cd5a0fdce61ba852707358840465a92d5da32ec4dc365ace67674b4164"
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
