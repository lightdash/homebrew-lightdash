class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3196.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3196.0/lightdash-cli-0.3196.0-macos-arm64.tar.gz"
      sha256 "077472371fbca764e9fa8e0d431a9a893905cd380ff823b66adb209568847c68"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3196.0/lightdash-cli-0.3196.0-macos-x64.tar.gz"
      sha256 "f0b58f1e37239f1a200edd67d5d3c728ece60de4e3ad97e3938389dbdf804ac5"
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
