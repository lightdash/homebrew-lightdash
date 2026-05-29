class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3044.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3044.0/lightdash-cli-0.3044.0-macos-arm64.tar.gz"
      sha256 "9a578ac26dc3d10cecd634864f16591ff2d1edfb412d2a9d0c9cfc09cbfb98b9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3044.0/lightdash-cli-0.3044.0-macos-x64.tar.gz"
      sha256 "65603c0a41c51b5296b552558dbf7981b9afd9908cab52ab3ac81661b642d312"
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
