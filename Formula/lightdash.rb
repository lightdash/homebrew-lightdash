class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.184.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.2/lightdash-cli-2.184.2-macos-arm64.tar.gz"
      sha256 "e9e3a515223a647c5fa075399f5756e51d7b2f55515debbbf35b9e3d25ab111a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.2/lightdash-cli-2.184.2-macos-x64.tar.gz"
      sha256 "a55e919fe98d9e74bd13e9871b2ab193aa51092e6318e908cb55000dff7f1fd8"
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
