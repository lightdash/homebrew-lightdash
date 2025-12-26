class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2280.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2280.2/lightdash-cli-0.2280.2-macos-arm64.tar.gz"
      sha256 "d633176abe23c3d631fac8d93def9b5f586f0ad8e3fcfca6e95ac71eaf4ccbd6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2280.2/lightdash-cli-0.2280.2-macos-x64.tar.gz"
      sha256 "92856e305bbd5080ec7df8f24fedbc04cfca3b47e88522c7f1e4fb5889a17ed3"
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
