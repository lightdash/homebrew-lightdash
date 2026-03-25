class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2665.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2665.0/lightdash-cli-0.2665.0-macos-arm64.tar.gz"
      sha256 "3b4d76eee9419be989e03dc8a628d6b99f1cf6ea759ccfc806c7e4fad6a386f6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2665.0/lightdash-cli-0.2665.0-macos-x64.tar.gz"
      sha256 "ca51072d27a0931ab5d47caeab958af27259f512b72b9c60c16f9a53430de050"
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
