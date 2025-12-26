class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2281.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2281.0/lightdash-cli-0.2281.0-macos-arm64.tar.gz"
      sha256 "72d9df3d44d1a6b393e138c60b7f667ba4369d5ec5be38428e0f7a8758c95038"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2281.0/lightdash-cli-0.2281.0-macos-x64.tar.gz"
      sha256 "c84c1fe164337478262f83a910d826b137d53c694fa1d84ede951b76a53ca4a3"
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
