class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3110.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.4/lightdash-cli-0.3110.4-macos-arm64.tar.gz"
      sha256 "61ef57f926c9a73dca37c374ea8c6380966384631ff5ac87919b6fb891572206"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.4/lightdash-cli-0.3110.4-macos-x64.tar.gz"
      sha256 "1ce98457c320fe2d800336b0bca7686014d2c10b36d81b34ea317902e9466f67"
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
