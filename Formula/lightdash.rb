class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2325.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2325.2/lightdash-cli-0.2325.2-macos-arm64.tar.gz"
      sha256 "94062e60f3d632ec3bf2e9165402d7af171278c0883335e52aaa50619ca39740"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2325.2/lightdash-cli-0.2325.2-macos-x64.tar.gz"
      sha256 "d70290212c8d729cb9bbe89b53e5df52e1c08e77d648002efe47b3a6e85493d4"
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
