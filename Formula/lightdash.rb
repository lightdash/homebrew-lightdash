class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2744.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2744.1/lightdash-cli-0.2744.1-macos-arm64.tar.gz"
      sha256 "b9b724fc1a4541b3a178f70082c506ed60fc8681172010a8fd7630c01fba1998"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2744.1/lightdash-cli-0.2744.1-macos-x64.tar.gz"
      sha256 "2f822dede192ac8c4b59c7c2b7eea229eb3168fe3de2ca74d0c80c52cc977d97"
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
