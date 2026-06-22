class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3207.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3207.0/lightdash-cli-0.3207.0-macos-arm64.tar.gz"
      sha256 "1341c2bb6270702c1c74de4da96db840c51d41d4b4827e4ec23e93d1d99071da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3207.0/lightdash-cli-0.3207.0-macos-x64.tar.gz"
      sha256 "e58649e577cc7f2870e8454f3a0cddd947a9d567064f8e90739e2d07cb4f9a7c"
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
