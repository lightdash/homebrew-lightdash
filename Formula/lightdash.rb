class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3390.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3390.0/lightdash-cli-0.3390.0-macos-arm64.tar.gz"
      sha256 "a9edb6acc10bcf5ed64d3c00f5ea461ebf760c4168a1a18ffffc119416c6ce4a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3390.0/lightdash-cli-0.3390.0-macos-x64.tar.gz"
      sha256 "98ce912f3a87db9c790903e6255fccbb7a4f101889f2be5ca8100ced6baaadd5"
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
