class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2615.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.3/lightdash-cli-0.2615.3-macos-arm64.tar.gz"
      sha256 "769e813552d362452b3dfa0ebfbfa175df2fe3009c5763e121ce672480816b6b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.3/lightdash-cli-0.2615.3-macos-x64.tar.gz"
      sha256 "094e3e5d772940a283da662346792bfd3494515b0e67730321a451d638b795bb"
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
