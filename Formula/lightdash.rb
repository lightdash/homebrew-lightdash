class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2227.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2227.0/lightdash-cli-0.2227.0-macos-arm64.tar.gz"
      sha256 "4937cf3c7afbc94bda275d385cba7c228a7c6c594b971a7b8d8a8dbac107fb4f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2227.0/lightdash-cli-0.2227.0-macos-x64.tar.gz"
      sha256 "d02f0436336ee614c4be32d91ee38cdf46460f87ae753c35d2e870d2d19ce500"
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
