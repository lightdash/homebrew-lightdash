class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3002.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3002.2/lightdash-cli-0.3002.2-macos-arm64.tar.gz"
      sha256 "856ec83a94c7d3a648fbad262318c6e2bc5bde95d0977a0c13385dd215e3d9fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3002.2/lightdash-cli-0.3002.2-macos-x64.tar.gz"
      sha256 "6893afafa00f4356fed9e0c3c898bacd066395339f2668e3cde3a741495c7e16"
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
