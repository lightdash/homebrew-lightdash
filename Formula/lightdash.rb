class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2973.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2973.0/lightdash-cli-0.2973.0-macos-arm64.tar.gz"
      sha256 "ddf5aa72d4e83fdbf0d2ab9e06503ea9f18394e0aed7db8d7a70e6d2606177bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2973.0/lightdash-cli-0.2973.0-macos-x64.tar.gz"
      sha256 "c2a19f0a0692f8bd05d0da5b912f3e8a489435ec53e5dc3609704f6c4f02b02f"
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
