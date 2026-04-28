class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2825.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2825.1/lightdash-cli-0.2825.1-macos-arm64.tar.gz"
      sha256 "b5048460169c2fdc5ad884d81ef1fde8014ebbfbb7a964d6e1ccc7267fe6a210"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2825.1/lightdash-cli-0.2825.1-macos-x64.tar.gz"
      sha256 "9a17650c0e77c38264c4a3130fce9ba8a00265fc32a25c4176d3e02c9ef66691"
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
