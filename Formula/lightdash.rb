class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2876.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2876.0/lightdash-cli-0.2876.0-macos-arm64.tar.gz"
      sha256 "df0e8dc37d3d76155e37811ca562cd2514948f28245bbe520c2d7194434c1b7c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2876.0/lightdash-cli-0.2876.0-macos-x64.tar.gz"
      sha256 "2bdd48e9e9d009f765b639a77462e84a8818624060986eeb1718679385c680f8"
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
