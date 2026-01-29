class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2394.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2394.0/lightdash-cli-0.2394.0-macos-arm64.tar.gz"
      sha256 "aa96767f9c6a6c9f50440a59e412c968382a1a87375138767802812a40ffd651"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2394.0/lightdash-cli-0.2394.0-macos-x64.tar.gz"
      sha256 "180d68040530c336f87ceaa604db2cbf789734eddc2da24aa90c55d5d47de24e"
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
