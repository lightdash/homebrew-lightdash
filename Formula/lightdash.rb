class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2182.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2182.1/lightdash-cli-0.2182.1-macos-arm64.tar.gz"
      sha256 "6accff7c1031954701208599210fbe8cbdde2e26c359cd98aecd8fc32d74f831"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2182.1/lightdash-cli-0.2182.1-macos-x64.tar.gz"
      sha256 "ef00e5d86b5748f2f407d14ee0927e8869f38771456bb9c5c71b98d99d5e0268"
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
