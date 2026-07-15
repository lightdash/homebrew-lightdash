class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3383.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3383.0/lightdash-cli-0.3383.0-macos-arm64.tar.gz"
      sha256 "74f81975f0eba4d59e55ffdd31991d659e3a815956e8780865079ef502ced237"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3383.0/lightdash-cli-0.3383.0-macos-x64.tar.gz"
      sha256 "39a0e2d19f59f3a17027f2a543398a141d6bf9356a34cd61ea37eb721ea42cb4"
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
