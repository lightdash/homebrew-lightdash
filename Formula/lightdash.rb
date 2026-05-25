class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3015.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3015.1/lightdash-cli-0.3015.1-macos-arm64.tar.gz"
      sha256 "6e0e2f665695645db0965635e542ad97dbaedbf32b9a7342022bfd90ce659c9e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3015.1/lightdash-cli-0.3015.1-macos-x64.tar.gz"
      sha256 "cef502183426302c8de4dbbc232ffa15c3467283f204f849c57bb77637a1dbbf"
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
