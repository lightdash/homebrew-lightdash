class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2961.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2961.0/lightdash-cli-0.2961.0-macos-arm64.tar.gz"
      sha256 "b4680fb131b87e32dcc3aac30e2ffa1868444f6d23a9ab3ba9cbad399c9811f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2961.0/lightdash-cli-0.2961.0-macos-x64.tar.gz"
      sha256 "06b1995e951902c28ccd739a913fc53786d8f5182c6528e87390e8f06b7dfc97"
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
