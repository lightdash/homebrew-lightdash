class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2570.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2570.0/lightdash-cli-0.2570.0-macos-arm64.tar.gz"
      sha256 "b40e802762d0c3f631c9f2f34519ff70d78800e5c7b366eabc4393841d390f5e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2570.0/lightdash-cli-0.2570.0-macos-x64.tar.gz"
      sha256 "8c0613a65ab1f5bc3e1aad290f7e85d3f29476ecc44a3f96963ade458082b020"
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
