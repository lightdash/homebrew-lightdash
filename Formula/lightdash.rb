class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3049.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3049.3/lightdash-cli-0.3049.3-macos-arm64.tar.gz"
      sha256 "098db2a5d49677d8b458ebd36fd3f5f1f79a4d74925eb3151f9ee81a440b6247"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3049.3/lightdash-cli-0.3049.3-macos-x64.tar.gz"
      sha256 "99ef7c057e4a8ac0a2767da1d29f7f14e09b261b456b947fc1a8d0547ebebb16"
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
