class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.9.0/lightdash-cli-1.9.0-macos-arm64.tar.gz"
      sha256 "e578f4e7246dd0ed84e39e515f5f2489e5d43650a1f5beb30525f0911049a85e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.9.0/lightdash-cli-1.9.0-macos-x64.tar.gz"
      sha256 "397c02ca0fa666eb644644a55ea085fdbf128d414ffeceb0984c329803e4c138"
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
