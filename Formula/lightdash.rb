class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2458.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2458.1/lightdash-cli-0.2458.1-macos-arm64.tar.gz"
      sha256 "c416a8b8ec64d9850244bbf0425b7fa44a06ea3cb4263f1217f082fd0a646899"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2458.1/lightdash-cli-0.2458.1-macos-x64.tar.gz"
      sha256 "087df98352d33c3cfabcd0be840db800ab0854a918e5d857eac51ca94ffeb48d"
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
