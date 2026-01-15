class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2341.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2341.0/lightdash-cli-0.2341.0-macos-arm64.tar.gz"
      sha256 "80f27b7aed832d931dc201453c9072d8beb9c167c5d27e309c62f6052bc90116"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2341.0/lightdash-cli-0.2341.0-macos-x64.tar.gz"
      sha256 "4a9689362e5314cec0efd167b7d85f6a6913620d9859b6855fa732db95bc405c"
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
