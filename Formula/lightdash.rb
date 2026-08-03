class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.61.0/lightdash-cli-1.61.0-macos-arm64.tar.gz"
      sha256 "ac210ddfcda212f5ab54edccd96d2d99d28a83454ffd36e940829868257a74ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.61.0/lightdash-cli-1.61.0-macos-x64.tar.gz"
      sha256 "5f77de52e125ce035b972bd1cc2348626e09e698d168386eb227ec76430f84af"
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
