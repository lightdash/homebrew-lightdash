class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.162.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.4/lightdash-cli-1.162.4-macos-arm64.tar.gz"
      sha256 "62a5c87fa08f9de28eb2f4197202900c6a7a7a8e03778208e315837decd78b3b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.4/lightdash-cli-1.162.4-macos-x64.tar.gz"
      sha256 "cc7cf9fc6fbdb8366c62a0fd57f522ae39af62bcaca030fd35cb659d15af3289"
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
