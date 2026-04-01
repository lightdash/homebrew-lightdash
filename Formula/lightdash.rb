class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2704.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2704.0/lightdash-cli-0.2704.0-macos-arm64.tar.gz"
      sha256 "993973eafb55f5ea969054f8b6ac4be89eabea8e7cf79b71e5943d65f151a614"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2704.0/lightdash-cli-0.2704.0-macos-x64.tar.gz"
      sha256 "e72e9c38822a9ea1a7c41f05e1ed5ab2329108ac3844b68d79d6c004e0cde5b6"
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
