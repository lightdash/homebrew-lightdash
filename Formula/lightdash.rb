class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3126.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3126.0/lightdash-cli-0.3126.0-macos-arm64.tar.gz"
      sha256 "8a9c2e701297657c9b41e0fa935b8fb9c8ff20807ecd1fb7dbfaa0a78aa18af4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3126.0/lightdash-cli-0.3126.0-macos-x64.tar.gz"
      sha256 "396a12c43ed317c2a2ea3ed06800b1859994a2a407d53a6605eab7b48eb2b5d8"
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
