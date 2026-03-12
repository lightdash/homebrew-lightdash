class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2614.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2614.1/lightdash-cli-0.2614.1-macos-arm64.tar.gz"
      sha256 "8f43d0a90aeff43fe9e99316b93270e2545c4b1d74d3e99e62f5f18643335b52"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2614.1/lightdash-cli-0.2614.1-macos-x64.tar.gz"
      sha256 "c6e89d6c0e0c2c0b3fb45cbce756b5226cba66128e9ce9a8d4686014b0f2cf6b"
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
