class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2547.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2547.0/lightdash-cli-0.2547.0-macos-arm64.tar.gz"
      sha256 "c83a58619b382bda30c44670584c0346bb0bce2864ccb9d95e9e56eb08565c95"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2547.0/lightdash-cli-0.2547.0-macos-x64.tar.gz"
      sha256 "37897e2f07ac4055db740fad8c3f4e5e00f7c7f8e26bbb32560eafc5f9bbeeb5"
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
