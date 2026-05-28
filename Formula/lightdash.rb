class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3035.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3035.0/lightdash-cli-0.3035.0-macos-arm64.tar.gz"
      sha256 "ce46a7142a95b456b1e69e6ccba444afb315f43f25c97f013561b85295fd5650"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3035.0/lightdash-cli-0.3035.0-macos-x64.tar.gz"
      sha256 "d7fec100d3d34dbee27ef0f2227203b783e56569e6704eff6fc8b33a6cc918b4"
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
