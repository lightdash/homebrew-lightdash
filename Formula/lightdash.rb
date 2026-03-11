class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2607.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2607.1/lightdash-cli-0.2607.1-macos-arm64.tar.gz"
      sha256 "a1590101573da6751b8f817f27ce4942fee8e0c4e5581776132f9d9665047646"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2607.1/lightdash-cli-0.2607.1-macos-x64.tar.gz"
      sha256 "105ec03dd229345ef4f32122044429a3fe21e24f45232b6af4ac2adb5530513f"
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
