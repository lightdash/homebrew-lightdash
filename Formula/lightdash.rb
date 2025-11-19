class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2184.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2184.0/lightdash-cli-0.2184.0-macos-arm64.tar.gz"
      sha256 "7fe18a727ac8713268ec3ce0a45b8a4b988ecb58c30da70d430186055f11f140"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2184.0/lightdash-cli-0.2184.0-macos-x64.tar.gz"
      sha256 "75e95e2bdda81ad9bf669f79daf67e2a543e4390b87b5371c5c4a670b4115902"
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
