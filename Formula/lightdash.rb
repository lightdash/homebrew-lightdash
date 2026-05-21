class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2999.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2999.2/lightdash-cli-0.2999.2-macos-arm64.tar.gz"
      sha256 "fbaf140ccf876682972befe1db231a694d4825d4230383b4eb9c96d5719ee2dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2999.2/lightdash-cli-0.2999.2-macos-x64.tar.gz"
      sha256 "0a0bb53c89e90060e8873c94227d6820e9d37a8e8402f83142791a240543f616"
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
