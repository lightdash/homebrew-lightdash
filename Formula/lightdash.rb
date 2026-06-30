class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3263.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3263.1/lightdash-cli-0.3263.1-macos-arm64.tar.gz"
      sha256 "1d1c8a7c0693df80e927816706e2add23cb330c70f356dc75b4b7fcf7bea5646"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3263.1/lightdash-cli-0.3263.1-macos-x64.tar.gz"
      sha256 "b7d2781e2c5656f2a203501a95ec592293e14ac0c92263f5065e8751739ea356"
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
