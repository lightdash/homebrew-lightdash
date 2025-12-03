class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2218.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2218.3/lightdash-cli-0.2218.3-macos-arm64.tar.gz"
      sha256 "13f76997b64d1e265c65a755b985f9cef6d5273750a9ed9b28b8ebe16ad70ee1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2218.3/lightdash-cli-0.2218.3-macos-x64.tar.gz"
      sha256 "09bae1003e87ee2d824c67c9c2e845e3b1ab542127b3e673395b0d5091210870"
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
