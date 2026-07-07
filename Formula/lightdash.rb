class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3328.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.1/lightdash-cli-0.3328.1-macos-arm64.tar.gz"
      sha256 "8bf57ab572e98268cc7a6f86c67e60032e5fd31bc10ff764df732de4e6029d25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.1/lightdash-cli-0.3328.1-macos-x64.tar.gz"
      sha256 "e23586fc3aae994d16b4ccf1345db4c15f3574996cb25d45e0d8cc32cf568c50"
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
