class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3021.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3021.0/lightdash-cli-0.3021.0-macos-arm64.tar.gz"
      sha256 "73a950fc18e8c6b1bc9f8dacbf2fc4b7f26464cfb54fe920cc41adfe8034562b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3021.0/lightdash-cli-0.3021.0-macos-x64.tar.gz"
      sha256 "5d11834441f63bb515ee25f6a924e8d0643293a053cc06526db765936d5c596b"
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
