class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.140.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.140.2/lightdash-cli-2.140.2-macos-arm64.tar.gz"
      sha256 "deecefbf0ae2c1f4c9d3bde925100f1deebd6b4e33e3503eddf5fd9ecbcb91ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.140.2/lightdash-cli-2.140.2-macos-x64.tar.gz"
      sha256 "2c6133a61b1e90799ecf553f3a76826d04d6ac868119432ce85839ac56ddd746"
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
