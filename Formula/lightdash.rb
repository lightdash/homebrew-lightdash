class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2503.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2503.0/lightdash-cli-0.2503.0-macos-arm64.tar.gz"
      sha256 "5e1ff7f8dbda707bcae3e648d1e5a8df94f0bfefde90a1558bb2adbea5101e68"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2503.0/lightdash-cli-0.2503.0-macos-x64.tar.gz"
      sha256 "8c17f9087acef9621e6c97d6dcf575eafec2abe174174d58a1ded71c79f627ea"
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
