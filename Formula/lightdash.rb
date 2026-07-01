class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3274.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3274.0/lightdash-cli-0.3274.0-macos-arm64.tar.gz"
      sha256 "b9a546c24440367307984c217888f746e5d092f0549063933d28ca63c4e87ed6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3274.0/lightdash-cli-0.3274.0-macos-x64.tar.gz"
      sha256 "8b166831f1c1eec0f1b90df09eb9df30a4dd35a705a54c2f24325f241def173f"
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
