class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.123.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.123.0/lightdash-cli-1.123.0-macos-arm64.tar.gz"
      sha256 "b8587d979da89b5ed5c83df498988188828665db550d8e31efe3c5fd4e00934e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.123.0/lightdash-cli-1.123.0-macos-x64.tar.gz"
      sha256 "bc86f3a90f2e0362577319b5eddb84a4bd7fdc4ba680e836e65ab17a7deed54f"
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
