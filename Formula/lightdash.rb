class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2376.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2376.0/lightdash-cli-0.2376.0-macos-arm64.tar.gz"
      sha256 "4cfbd6f63f334d28b4aa3369dc322b09d55cfb612f6d1e93e847bca27359be76"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2376.0/lightdash-cli-0.2376.0-macos-x64.tar.gz"
      sha256 "8d8346d39a7c5665cdd47d58e3120097516a8fa6b4c5de76accd3f6bc78d7453"
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
