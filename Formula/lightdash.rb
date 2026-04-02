class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2715.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2715.0/lightdash-cli-0.2715.0-macos-arm64.tar.gz"
      sha256 "828443c288bca24c3e418147e32ea7e36401ef5e27d9572befba716f61bfd9d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2715.0/lightdash-cli-0.2715.0-macos-x64.tar.gz"
      sha256 "5d42a97a0ce3746c63de43ed68ba649162160eeeef434e2b72ba5fbcb1cc50f5"
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
