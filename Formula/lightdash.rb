class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3289.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3289.0/lightdash-cli-0.3289.0-macos-arm64.tar.gz"
      sha256 "001d3104ada6a3e680f317b4c60db75641db532698b66b0e368e58fa27de70b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3289.0/lightdash-cli-0.3289.0-macos-x64.tar.gz"
      sha256 "a08b08bae5fee82bd49a926c0ec187069fc252a4a8886707895ca68e67bddcf1"
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
