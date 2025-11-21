class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2198.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.0/lightdash-cli-0.2198.0-macos-arm64.tar.gz"
      sha256 "555c84da7d28a34452e9b731457fe8f3280e7b20d6bce2d74a7052cc5251d641"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.0/lightdash-cli-0.2198.0-macos-x64.tar.gz"
      sha256 "5bbaadf02ef4fff50195a5cc112fd2c101b12af474fd17ed0b10d11527533f53"
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
