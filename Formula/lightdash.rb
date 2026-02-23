class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2509.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2509.0/lightdash-cli-0.2509.0-macos-arm64.tar.gz"
      sha256 "ce585b5e5109fe71c0e1a10dab2573cee177b27a3086b558113b174e688af11b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2509.0/lightdash-cli-0.2509.0-macos-x64.tar.gz"
      sha256 "92427e176aecfe38bdc94b5b6333d2930ea597ca3159d60a7cad54458a4af1f8"
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
