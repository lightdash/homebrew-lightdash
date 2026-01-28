class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2386.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2386.0/lightdash-cli-0.2386.0-macos-arm64.tar.gz"
      sha256 "f4b3f1e334a00177c59dd14e6f93df2d112c76ec4b581abfd444d8b5854807d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2386.0/lightdash-cli-0.2386.0-macos-x64.tar.gz"
      sha256 "05d8a6782088f4931232d8a5c41a34c1e8f0ab4d73548276e65c7863a8e83a93"
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
