class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.185.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.185.0/lightdash-cli-1.185.0-macos-arm64.tar.gz"
      sha256 "0e960da18d164b36c040ebd111692f9fc0f8817e347bab2d30ec5ab8b8402805"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.185.0/lightdash-cli-1.185.0-macos-x64.tar.gz"
      sha256 "d8e0cce3e330b09f81057fa3808a73f7c586939d74b750a1148df85de4e55c87"
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
