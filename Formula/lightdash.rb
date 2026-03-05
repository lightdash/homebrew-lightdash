class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2578.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2578.1/lightdash-cli-0.2578.1-macos-arm64.tar.gz"
      sha256 "8b4f2ed2dbe11c2abda607c4e36aa63fabddac9557d3a519b1205d7207df24bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2578.1/lightdash-cli-0.2578.1-macos-x64.tar.gz"
      sha256 "e5b8080959d418ccf2b47d4e62571fc5af0466c46812a961eca9fe2185be4070"
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
