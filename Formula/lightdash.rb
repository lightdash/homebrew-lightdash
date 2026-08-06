class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.94.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.94.0/lightdash-cli-1.94.0-macos-arm64.tar.gz"
      sha256 "9e1b2dd02297af632ac5365e788fc691019504a97387d8a8f228c66ab089b6ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.94.0/lightdash-cli-1.94.0-macos-x64.tar.gz"
      sha256 "fcbba6bc9dac24e68f7a1b90794940a1da440e5bffbf52159453aba8e7be8eaf"
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
