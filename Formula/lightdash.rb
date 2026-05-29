class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3050.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3050.0/lightdash-cli-0.3050.0-macos-arm64.tar.gz"
      sha256 "9062f0d04c407083c0c36da310c7e4a90c1962de6f41ca0a30cf38bb164f4e13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3050.0/lightdash-cli-0.3050.0-macos-x64.tar.gz"
      sha256 "0044036610478a15d8704d320d352cf41d43b4669df4e17f16db6d32c460900b"
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
