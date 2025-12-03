class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2220.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2220.0/lightdash-cli-0.2220.0-macos-arm64.tar.gz"
      sha256 "c7fa2aef975202cabaeb9c1d88da57ae160fbccfaa6957bac9bddfeb91056fae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2220.0/lightdash-cli-0.2220.0-macos-x64.tar.gz"
      sha256 "756e41b6f5cd9b656a8b07facd1af6759ace837662e09f5d7378bbd71030ae53"
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
