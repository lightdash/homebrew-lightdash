class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.20.0/lightdash-cli-2.20.0-macos-arm64.tar.gz"
      sha256 "d7bee5638e89fddc59224d3d54697baa1eaa7a2c24104adfb71acf0e61566b28"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.20.0/lightdash-cli-2.20.0-macos-x64.tar.gz"
      sha256 "74e13e492e2f2817e3752b90104e6f8370460f1b77f7b202fad5bd415ed585b8"
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
