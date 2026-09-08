class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.151.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.151.0/lightdash-cli-2.151.0-macos-arm64.tar.gz"
      sha256 "6dab8ac00a613bff652201dbf6e8f137c96410b532ca03b85c96a843387bde75"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.151.0/lightdash-cli-2.151.0-macos-x64.tar.gz"
      sha256 "0d9476eebec6887cbb8e4e5405d798b1f1a8e58c60c1f6cfe8d03d076ba9ee47"
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
