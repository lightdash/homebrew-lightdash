class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2498.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.2/lightdash-cli-0.2498.2-macos-arm64.tar.gz"
      sha256 "c09b852d781bb11e857bdfa3293f3aa56c2ebdb07c59cdb6d5d32d26715f269f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.2/lightdash-cli-0.2498.2-macos-x64.tar.gz"
      sha256 "0f8b380f4dadcfc7ffbe8c354d3a0672bbf33fc4b5afbb2c0adf8b0da07bd4ab"
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
