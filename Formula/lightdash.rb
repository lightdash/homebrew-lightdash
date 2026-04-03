class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2721.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2721.0/lightdash-cli-0.2721.0-macos-arm64.tar.gz"
      sha256 "7deabbd05c1360c28166e66b3b0d736e63bed86e3195d63717e935047a927ede"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2721.0/lightdash-cli-0.2721.0-macos-x64.tar.gz"
      sha256 "6dd8aa48263ef77d38a2bfff536f2afc53d62402f08f3a4464a13b08a12b6f58"
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
