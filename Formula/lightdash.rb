class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3211.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3211.0/lightdash-cli-0.3211.0-macos-arm64.tar.gz"
      sha256 "5c8bafbe241008f90846226c91bc3962078fa47a00e613fcb65e2a925ba48aaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3211.0/lightdash-cli-0.3211.0-macos-x64.tar.gz"
      sha256 "eb6387f848184cda05f7593f4a04c2c7c667c5fea4177ec555fb38d1b445ca81"
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
