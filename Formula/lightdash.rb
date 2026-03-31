class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2697.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2697.0/lightdash-cli-0.2697.0-macos-arm64.tar.gz"
      sha256 "3cf43fb38a97b10dc374536cdbcbc712432fb52ea7a800203cf643ceef45ce5a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2697.0/lightdash-cli-0.2697.0-macos-x64.tar.gz"
      sha256 "167a26e40245521753fc435dc43b6e4d3337e7c2b8338e3839ee31babee6f272"
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
