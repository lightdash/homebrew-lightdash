class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.110.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.110.2/lightdash-cli-2.110.2-macos-arm64.tar.gz"
      sha256 "dc08a687cb08fe0a6bdfe5cb18647920db963f7a3c600775d4b65b65a7c939d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.110.2/lightdash-cli-2.110.2-macos-x64.tar.gz"
      sha256 "33140395212ca78814ad8d7f370db68f06a9b0de8163ced33c2ec21911b0576e"
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
