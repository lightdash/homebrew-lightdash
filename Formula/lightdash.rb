class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2692.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2692.0/lightdash-cli-0.2692.0-macos-arm64.tar.gz"
      sha256 "e2c6acae6f9c4a932973d90bea2f8c248aed1b822426209d9d15d2eaaa456cf6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2692.0/lightdash-cli-0.2692.0-macos-x64.tar.gz"
      sha256 "218e04b88badc29f08a8b75e5233e1d6fc05a9b39c8fc3b080b35fcc74f22bbe"
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
