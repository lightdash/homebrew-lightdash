class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.134.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.134.0/lightdash-cli-2.134.0-macos-arm64.tar.gz"
      sha256 "26efbce0a790fc80a44a270d5cd1fe74abb22d755ba86ab42b7297011ebb8f65"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.134.0/lightdash-cli-2.134.0-macos-x64.tar.gz"
      sha256 "2396e227a0dcf75c2d70ea776725f70c6ca3ac11a0562b99d3891be38177e1c5"
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
