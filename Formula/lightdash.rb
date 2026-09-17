class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.256.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.256.4/lightdash-cli-2.256.4-macos-arm64.tar.gz"
      sha256 "0ee4974f059aa3484a5abaae1aca56b2ecda77c8f0ca9d6ddec3467778539853"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.256.4/lightdash-cli-2.256.4-macos-x64.tar.gz"
      sha256 "4e93afa100610df462b038bdb309ceac0a4dbd7fe660751a094a1d0859f751e9"
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
