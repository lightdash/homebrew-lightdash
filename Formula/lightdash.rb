class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2967.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2967.0/lightdash-cli-0.2967.0-macos-arm64.tar.gz"
      sha256 "3fcce11e2724399e9be5b3af46b7a237531c2cf768d8590f4de1413164cdf9c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2967.0/lightdash-cli-0.2967.0-macos-x64.tar.gz"
      sha256 "ae7170acaf959aecb2abb30c16768ebbacc49b80abc8217b9c479c82cb23daa0"
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
