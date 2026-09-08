class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.165.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.165.1/lightdash-cli-2.165.1-macos-arm64.tar.gz"
      sha256 "b81c0fb5230c1cbe3427f66e833ab18c63584f4cb145e5588d3e576dceff3104"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.165.1/lightdash-cli-2.165.1-macos-x64.tar.gz"
      sha256 "a276593b084d1a6be068c3e001a4f513b2b178fd52b56154b6086eec37a443fc"
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
