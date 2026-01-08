class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2314.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2314.1/lightdash-cli-0.2314.1-macos-arm64.tar.gz"
      sha256 "25dd0a00f92e1f30d3c9462f07bd2df7162388dfd7acabe2dd471915188fa221"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2314.1/lightdash-cli-0.2314.1-macos-x64.tar.gz"
      sha256 "2b8ff98d086911d0021b9dcf6df1227f58760fa5b8a6d6f8950e582466a480e4"
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
