class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3122.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3122.0/lightdash-cli-0.3122.0-macos-arm64.tar.gz"
      sha256 "5410acd5ad178cf3de8c8ee355af3d4acb1d6b9a09e0be7b67fd450a12905ee7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3122.0/lightdash-cli-0.3122.0-macos-x64.tar.gz"
      sha256 "5de41acaf8883fab234f9161e6d269d5ac6115f079df12cb69c538f0c54335a6"
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
