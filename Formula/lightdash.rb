class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3167.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3167.2/lightdash-cli-0.3167.2-macos-arm64.tar.gz"
      sha256 "b81f850fb6f7b4dd12a19be867c47e0f150b2e75b6697864c95d25aea8b59daf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3167.2/lightdash-cli-0.3167.2-macos-x64.tar.gz"
      sha256 "027415c9a22251b8bfd341df86f345f82f9e56612a4f157a41218bc5fd7c3939"
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
