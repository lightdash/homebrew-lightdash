class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.200.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.200.1/lightdash-cli-1.200.1-macos-arm64.tar.gz"
      sha256 "ad3fe6203c1ff359ff495d0bcc2d61cc5d752a621768c478bfac48a38ce61cd7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.200.1/lightdash-cli-1.200.1-macos-x64.tar.gz"
      sha256 "e93a594f7544c155854e7beb4fa521b2d88bb60d9ed1254d20a5fa8f71f57a7d"
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
