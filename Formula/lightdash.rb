class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3119.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3119.0/lightdash-cli-0.3119.0-macos-arm64.tar.gz"
      sha256 "4a4545e55c6374b171dcec8e74f83cbf588bde646a8af143bbaae3558be5b49d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3119.0/lightdash-cli-0.3119.0-macos-x64.tar.gz"
      sha256 "d51023576bbb570b9ffcaeb9974442acf68100135ee2b254ac4fb74736908cbd"
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
