class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3181.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3181.0/lightdash-cli-0.3181.0-macos-arm64.tar.gz"
      sha256 "5d4e39b130b817ef16866cb11c5cac8149bb35e8bebc02ec27ce4bee6b126094"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3181.0/lightdash-cli-0.3181.0-macos-x64.tar.gz"
      sha256 "de29fe27f79098a35fab478f5848277777eb60cba7dc4d0448f72e92833c4753"
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
