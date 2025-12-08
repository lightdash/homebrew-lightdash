class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2233.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2233.2/lightdash-cli-0.2233.2-macos-arm64.tar.gz"
      sha256 "e530a7bf63d095c00bf853f836c26a9403bc9be52f502800799bbecfc88f22b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2233.2/lightdash-cli-0.2233.2-macos-x64.tar.gz"
      sha256 "0588de62a95f5d76d62859891d3a7843eac3150f315ac68ce956bed407cfa8b6"
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
