class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2689.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2689.0/lightdash-cli-0.2689.0-macos-arm64.tar.gz"
      sha256 "50c7f912994f1ea15bcb6b266b7f7960be3446757f81791a980b8cfbeb9946f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2689.0/lightdash-cli-0.2689.0-macos-x64.tar.gz"
      sha256 "c2b89359114a5ea6b8bbbd43990643700fd536a8579d36c6042df698909b6cfc"
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
