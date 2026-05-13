class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2925.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2925.0/lightdash-cli-0.2925.0-macos-arm64.tar.gz"
      sha256 "2af41a01bddee290e0ac46f70bd702dfeae4bfbd5eea5da68bfc40317b17e7f6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2925.0/lightdash-cli-0.2925.0-macos-x64.tar.gz"
      sha256 "b442fd009d9ca2fe256bf65ad721b0958c7114e10649095e4f2fabfd701a06ae"
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
