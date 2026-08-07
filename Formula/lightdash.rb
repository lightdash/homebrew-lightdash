class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.100.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.100.0/lightdash-cli-1.100.0-macos-arm64.tar.gz"
      sha256 "4d64c5ea3e6415ecb95c527016d9f9e27ee134da67e2dcd3d3d525283e06de5f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.100.0/lightdash-cli-1.100.0-macos-x64.tar.gz"
      sha256 "e10715d9a4f70950dde819c9768c826d420441837b22c5012eca4b23c6975de7"
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
