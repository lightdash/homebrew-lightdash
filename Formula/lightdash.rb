class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3068.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3068.1/lightdash-cli-0.3068.1-macos-arm64.tar.gz"
      sha256 "b98543d0a25953bdcf6dfc8627bf2438c2cc76b545be6c211b7e941f80691fa0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3068.1/lightdash-cli-0.3068.1-macos-x64.tar.gz"
      sha256 "41ec419c2aa99ce04d880257573a2fd50579b1eb59f0ad2580558d7a1caf97a8"
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
