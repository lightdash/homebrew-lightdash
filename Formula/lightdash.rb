class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2984.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.1/lightdash-cli-0.2984.1-macos-arm64.tar.gz"
      sha256 "54f3e242b2dcad1276df7b555da8e7dfa0f085127157f21660cea8d9951645e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.1/lightdash-cli-0.2984.1-macos-x64.tar.gz"
      sha256 "8381e0c20e4d8f09e15f35ae88ef1e89bd6db98238b36f6e5004cd373b510607"
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
