class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3353.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3353.0/lightdash-cli-0.3353.0-macos-arm64.tar.gz"
      sha256 "c897a4a33204998f9b1f303d5a4911a224b313647d3eb2f32253009acdf8e80f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3353.0/lightdash-cli-0.3353.0-macos-x64.tar.gz"
      sha256 "c5eba94a6aa6eca67d1f0f62d08338f7d4c614301cc8b92092271968139b0d7e"
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
