class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.1/lightdash-cli-2.9.1-macos-arm64.tar.gz"
      sha256 "c9d7fc56312e797e31c75120b68656de26adea1ff2ca3415ac3c801b88ccd32d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.1/lightdash-cli-2.9.1-macos-x64.tar.gz"
      sha256 "477b139e3d4b157912ff7589d0effc82c1a86f7abb0e8b658e44db10aeecaacc"
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
