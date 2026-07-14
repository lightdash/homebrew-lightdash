class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3373.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3373.0/lightdash-cli-0.3373.0-macos-arm64.tar.gz"
      sha256 "e351a3a24c5eaea254e1f5c2a156ab418535af18559c96f9f56de1201053889a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3373.0/lightdash-cli-0.3373.0-macos-x64.tar.gz"
      sha256 "184b7bb5e1dc6d245913949aa57adfa948b3e89081e66d09df4abc85caee9149"
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
