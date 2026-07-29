class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.37.0/lightdash-cli-1.37.0-macos-arm64.tar.gz"
      sha256 "a1d8364064dc340f5ba4dddc8cc3a4ea072771de039f69a9a77c2919d02f6409"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.37.0/lightdash-cli-1.37.0-macos-x64.tar.gz"
      sha256 "73e231ac2d5dc5888b9bdfc84a69ce8641e19ff5087b72e53d729ab1dcee946c"
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
