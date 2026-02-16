class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2471.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2471.2/lightdash-cli-0.2471.2-macos-arm64.tar.gz"
      sha256 "bf49fa86400a71de4634d148c2653d01a06c915237cadb45ee320c45ab323288"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2471.2/lightdash-cli-0.2471.2-macos-x64.tar.gz"
      sha256 "7224949d19d218bc0b85c5158659c8bac1d62c35c56de4a08be8c557d2f2646f"
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
