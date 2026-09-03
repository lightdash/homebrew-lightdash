class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.111.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.111.0/lightdash-cli-2.111.0-macos-arm64.tar.gz"
      sha256 "9c972da7bb61dee7eb75399837de2e14b474fddc7c5b45d468d186f345418c7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.111.0/lightdash-cli-2.111.0-macos-x64.tar.gz"
      sha256 "b88a1b30b0be302f5650d4cb40fc23e8fc6e0c947c0b1c9ab388da10a8edf17a"
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
