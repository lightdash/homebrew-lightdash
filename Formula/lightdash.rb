class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.89.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.89.0/lightdash-cli-1.89.0-macos-arm64.tar.gz"
      sha256 "e8ef6632fa49bda496bdd8e182e9a1f2949dfade0fa961ebce5df417aad70016"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.89.0/lightdash-cli-1.89.0-macos-x64.tar.gz"
      sha256 "a5981b554f24c599cf0b09d4f36236b849a12aeb453e6c57ec4444132b29062f"
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
