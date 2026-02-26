class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2535.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2535.0/lightdash-cli-0.2535.0-macos-arm64.tar.gz"
      sha256 "06e5e1b01ca2fccd7679745c059cde58d2292d514c27bb4dc4d1457d62b5c5e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2535.0/lightdash-cli-0.2535.0-macos-x64.tar.gz"
      sha256 "50db652b7e63403cb50b3401916e701a3b47dc5559508a464811f2a0a7a4f0ea"
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
