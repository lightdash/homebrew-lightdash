class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.91.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.91.2/lightdash-cli-1.91.2-macos-arm64.tar.gz"
      sha256 "566bdb8024db3cb2422d5c4e20478dc19699e2f8653bf40a560a6d8d594eb12a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.91.2/lightdash-cli-1.91.2-macos-x64.tar.gz"
      sha256 "eee65dbcb52efd445688a523b06a5187f4fd372c84e6823fd2d493d83d4de885"
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
