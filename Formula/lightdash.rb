class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.163.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.163.1/lightdash-cli-2.163.1-macos-arm64.tar.gz"
      sha256 "c69abaa9a063792d004fd8e1f20f5a3a2aedbfda12480b221691ae7744e76efa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.163.1/lightdash-cli-2.163.1-macos-x64.tar.gz"
      sha256 "f4c8fa5abd73e4326f7237b3bdd568c6e4cdb311dc28d3b8ea08c97edbf607ef"
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
