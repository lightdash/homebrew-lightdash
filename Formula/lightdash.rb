class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2596.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2596.0/lightdash-cli-0.2596.0-macos-arm64.tar.gz"
      sha256 "a32e409c7745c7fd394d2aa983154ef85bd9acd808a4c417c91dabe6ee931fc7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2596.0/lightdash-cli-0.2596.0-macos-x64.tar.gz"
      sha256 "2079eb37d104b113812880cd47d239a0546c00191b8ef4fb1ed23ab10a558449"
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
