class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2765.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2765.0/lightdash-cli-0.2765.0-macos-arm64.tar.gz"
      sha256 "2a28782413d5902c6830a88b575691fafb64ee739c6fed7491fa6962b5cd0503"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2765.0/lightdash-cli-0.2765.0-macos-x64.tar.gz"
      sha256 "549a881403162b60255b5cc84cd7993c016614a5ededaf0f5e49bfbfb5d35e50"
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
