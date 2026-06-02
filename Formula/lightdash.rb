class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3072.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3072.2/lightdash-cli-0.3072.2-macos-arm64.tar.gz"
      sha256 "7efc382c7f589990f62d98d4e2775e6dd67d78a8c7191e9af28971b53cda5da2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3072.2/lightdash-cli-0.3072.2-macos-x64.tar.gz"
      sha256 "af257c1e04bbb3010588c399a0d705fe8c46ee12a4d46af8d65f526a13b7c0d9"
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
