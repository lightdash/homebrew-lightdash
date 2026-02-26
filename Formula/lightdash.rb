class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2531.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2531.0/lightdash-cli-0.2531.0-macos-arm64.tar.gz"
      sha256 "4f744c5e3135d167a8409aca3d6c075b387010947ce2f78fe319e66347ada31a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2531.0/lightdash-cli-0.2531.0-macos-x64.tar.gz"
      sha256 "636088713fff3c1d8ccf154bfdf0e892c1f3e4435abe79776e8826bfcec20421"
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
