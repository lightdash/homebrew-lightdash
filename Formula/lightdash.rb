class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.217.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.4/lightdash-cli-2.217.4-macos-arm64.tar.gz"
      sha256 "f4c08e48e175a9d6a1bc769920c67edc9190c5a64525268f698b171154a93088"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.4/lightdash-cli-2.217.4-macos-x64.tar.gz"
      sha256 "24dce3f2ed50f7bfcdb715c9874763af60d370930c8041c02bf3303ae6517672"
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
