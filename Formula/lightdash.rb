class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2532.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2532.1/lightdash-cli-0.2532.1-macos-arm64.tar.gz"
      sha256 "c3d44427d390a10cea3e20eae0086d2f047fbf034a644b77d9e9ade4edaddebb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2532.1/lightdash-cli-0.2532.1-macos-x64.tar.gz"
      sha256 "376ba70232e2a1216922cd055cf924e6820e7dbc4e2bb5c81253c80b5c57264a"
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
