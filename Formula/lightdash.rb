class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3432.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3432.0/lightdash-cli-0.3432.0-macos-arm64.tar.gz"
      sha256 "b98703a15d5d65458d68890dc16b42c58c6ce5862d95b855aff5566cd20aef8c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3432.0/lightdash-cli-0.3432.0-macos-x64.tar.gz"
      sha256 "bfacf47de5e5c83d886b812a8bd07ae8e447f1413940c84441d50fdb67a5c387"
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
