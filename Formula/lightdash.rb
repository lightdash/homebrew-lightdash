class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3253.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.4/lightdash-cli-0.3253.4-macos-arm64.tar.gz"
      sha256 "f636f1a94369de41be068d650d4a54ef8dff87a2f89a13c1de96f2d215c0055b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.4/lightdash-cli-0.3253.4-macos-x64.tar.gz"
      sha256 "fe38f2d344a2e31094b3b5940b48e30ae1585f7a04c4ec3536b090c35562f72b"
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
