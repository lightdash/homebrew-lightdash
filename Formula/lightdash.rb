class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2506.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2506.0/lightdash-cli-0.2506.0-macos-arm64.tar.gz"
      sha256 "979eaf6cf6dca71e18f03528969b913c7b5b0c28a6ea2b5d119ec38a325f4516"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2506.0/lightdash-cli-0.2506.0-macos-x64.tar.gz"
      sha256 "2f894d1cc116af81a07b1e6a4a61151296e71d5638f527f91fd1a09625c38323"
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
