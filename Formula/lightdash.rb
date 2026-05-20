class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2992.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2992.0/lightdash-cli-0.2992.0-macos-arm64.tar.gz"
      sha256 "5b71dd82459a256408540ff13861cd5dbb567021900c5b8dc99d76921a32093c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2992.0/lightdash-cli-0.2992.0-macos-x64.tar.gz"
      sha256 "6af48b79883ed1a8c6f7ad17b9d61ee939aa52d29866fdd32d119c3307574b08"
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
