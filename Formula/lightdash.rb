class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2206.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2206.0/lightdash-cli-0.2206.0-macos-arm64.tar.gz"
      sha256 "87b8abb82c7a1fb757ac32fbd73a3903207da54c9023b82f3532908242f54763"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2206.0/lightdash-cli-0.2206.0-macos-x64.tar.gz"
      sha256 "c7a98e28a73f1973ca8bd78c32727deb2780ba22c3d349df6a8648d7cd4cfcaa"
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
