class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2568.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2568.0/lightdash-cli-0.2568.0-macos-arm64.tar.gz"
      sha256 "41705f25fb4f7a0f5dc5d1b66126b90a8c912d124fe98f3d0c98729981c23989"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2568.0/lightdash-cli-0.2568.0-macos-x64.tar.gz"
      sha256 "e5e40e6815c2d47efac5cb3faf0c9941266243f454f6b5f35c0687bd8067daa2"
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
