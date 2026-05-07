class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2889.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2889.0/lightdash-cli-0.2889.0-macos-arm64.tar.gz"
      sha256 "cce50b6d7bcef64949ffdae10523dd71005607150043b2af7bb93095c6ceba4c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2889.0/lightdash-cli-0.2889.0-macos-x64.tar.gz"
      sha256 "217319a2cc1286675895d6f7109feaf947885b85f0e24a0c45cd63b5615d8b71"
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
