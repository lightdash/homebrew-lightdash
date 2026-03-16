class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2621.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2621.2/lightdash-cli-0.2621.2-macos-arm64.tar.gz"
      sha256 "fabfa12ba0fbbb3f09856070ead8d5f5ee1613b4eca2bf97738892f546136186"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2621.2/lightdash-cli-0.2621.2-macos-x64.tar.gz"
      sha256 "e0e97ca8eba7ba86c189c29d4ba37c4b3132ae3d33bb0f23558bc647c8532852"
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
