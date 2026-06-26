class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3253.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.3/lightdash-cli-0.3253.3-macos-arm64.tar.gz"
      sha256 "3559fd780e4af4d28e792cb876387d61dee1a86cce5ed59541b89b833c8cb5c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.3/lightdash-cli-0.3253.3-macos-x64.tar.gz"
      sha256 "0c67daee0fe7f090d404b4c233bcedff8cef3744dedc7e321a344822c91eabf5"
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
