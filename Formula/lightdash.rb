class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2226.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2226.0/lightdash-cli-0.2226.0-macos-arm64.tar.gz"
      sha256 "eea07ff10eefcdca2952eae0a2a826ad95bd4d72c1de0d8553da840016b77932"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2226.0/lightdash-cli-0.2226.0-macos-x64.tar.gz"
      sha256 "71a6fb7363b8012f73a79caf6e4fa7d2c07bfe3ff0be47ba92233b76589a6fc8"
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
