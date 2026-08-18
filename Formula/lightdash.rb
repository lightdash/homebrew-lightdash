class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.181.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.181.0/lightdash-cli-1.181.0-macos-arm64.tar.gz"
      sha256 "b6ff355a38273a58c4b1d80bcb06a46275d041b5366723c6b11a3988a6cc35ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.181.0/lightdash-cli-1.181.0-macos-x64.tar.gz"
      sha256 "642fa042c4a65afc77f7725a92621b10b73d6172d3d43b62dd3742b6f181e4e3"
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
