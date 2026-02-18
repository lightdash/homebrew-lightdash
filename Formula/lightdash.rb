class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2482.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2482.2/lightdash-cli-0.2482.2-macos-arm64.tar.gz"
      sha256 "65f7e733cf109154b8f22d325710e2df371ffd8ed40685483c17e024f6a99725"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2482.2/lightdash-cli-0.2482.2-macos-x64.tar.gz"
      sha256 "ba01d480eedaed79a58c240bca07f47ea5f9164a368a4d404d7ae8c25a0f8dd1"
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
