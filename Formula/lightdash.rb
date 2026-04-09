class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2740.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.4/lightdash-cli-0.2740.4-macos-arm64.tar.gz"
      sha256 "4befb8dd5d75721744525faf376e35bca0e89c1dae3cf3b5ab1258348cbf607e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.4/lightdash-cli-0.2740.4-macos-x64.tar.gz"
      sha256 "02cb6ab6f2f41340cd314684e41c384bba77aaeb3eec2ebe5edd910a91b6f090"
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
