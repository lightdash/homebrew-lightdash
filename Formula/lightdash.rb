class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2915.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2915.1/lightdash-cli-0.2915.1-macos-arm64.tar.gz"
      sha256 "b3320cd2fc6af8637b1d30e9cd7f6fd159a0d8cd4dc99b44814c0dff1336e178"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2915.1/lightdash-cli-0.2915.1-macos-x64.tar.gz"
      sha256 "b3631a3e871d55464d960e510a15e1ee0c406eea3460df778958e21ed444f0e7"
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
