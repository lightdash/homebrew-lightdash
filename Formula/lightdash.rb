class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2904.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.1/lightdash-cli-0.2904.1-macos-arm64.tar.gz"
      sha256 "eae2b49b938e19160e771cbd600809f66895f212c181bcc650169b85ade0970a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.1/lightdash-cli-0.2904.1-macos-x64.tar.gz"
      sha256 "c32d86dc6372e897869b61c369c6ff5414411e43ac13bcb4591edf9bac52aa02"
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
