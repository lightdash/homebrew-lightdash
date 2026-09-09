class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.168.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.168.0/lightdash-cli-2.168.0-macos-arm64.tar.gz"
      sha256 "c0ac37aa50c4f5693fb95ee0371666e6d04e83ba637ab39ee0c68b1baf35d00a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.168.0/lightdash-cli-2.168.0-macos-x64.tar.gz"
      sha256 "cf13364515f341984bbe2db3671b71766478a6823a14a1c2d83eacf31198693c"
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
