class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2295.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2295.1/lightdash-cli-0.2295.1-macos-arm64.tar.gz"
      sha256 "5570607c97015b60ad983005cab4dc04021b8982cb2c7cc11362692994aba73d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2295.1/lightdash-cli-0.2295.1-macos-x64.tar.gz"
      sha256 "1202ad88b38045b7dba04b51422be91ae799dab59519b8a5b4cb24d4651dd68b"
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
