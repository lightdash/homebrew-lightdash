class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2248.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2248.2/lightdash-cli-0.2248.2-macos-arm64.tar.gz"
      sha256 "84ebcb78b3dbe6c76a6bcd9febd03b93334bbe73422cb992fb745fd92b604d5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2248.2/lightdash-cli-0.2248.2-macos-x64.tar.gz"
      sha256 "5f96e6fd532f55546ccff7acd3b020e9cf43393198b550c85b4daf974a207bb5"
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
